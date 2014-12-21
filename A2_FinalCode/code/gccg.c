/**
 * Main GCCG program
 *
 * @author E. Xue, V. Petkov
 * @date 22-May-2009, 22-Oct-2012
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include "mpi.h"
#include "metis.h"
#include "initialization.h"
#include "compute_solution.h"
#include "finalization.h"
#include "test_functions.h"
#include "scorep/SCOREP_User.h"

int main(int argc, char *argv[]) {
    int my_rank, num_procs;

    const int max_iters = 10000;    /// maximum number of iteration to perform

    /** Simulation parameters parsed from the input datasets */
    int nintci, nintcf;    /// internal cells start and end index
    /// external cells start and end index. The external cells are only ghost cells.
    /// They are accessed only through internal cells
    int nextci, nextcf;
    int **lcc;    /// link cell-to-cell array - stores neighboring information
    int *lcc_local;
    /// Boundary coefficients for each volume cell (South, East, North, West, High, Low)
    double *bs, *be, *bn, *bw, *bl, *bh;
    double *bp;    /// Pole coefficient
    double *su;    /// Source values

    double residual_ratio;    /// the ratio between the reference and the current residual
    double *var;    /// the variation vector -> keeps the result in the end

    /** Additional vectors required for the computation */
    double *cgup, *oc, *cnorm;

    /** Geometry data */
    int points_count;    /// total number of points that define the geometry
    int** points;    /// coordinates of the points that define the cells - size [points_cnt][3]
    int* elems;    /// definition of the cells using their nodes (points) - each cell has 8 points
    int num_elems;

    /** Mapping between local and remote cell indices */
    int* local_global_index;    /// local to global index mapping
    int* global_local_index;    /// global to local index mapping
    int* local_global_index_full;

    /** Lists of cells requires for the communication */
    int neighbors_count = 0;    /// total number of neighbors to communicate with
    int* send_count;    /// number of elements to send to each neighbor (size: neighbors_count)
    /// send lists for the other neighbors(cell ids which should be sent)(size:[#neighbors][#cells]
    int** send_list;
    int* recv_count;    /// how many elements are in the recv lists for each neighbor
    int** recv_list;    /// send lists for the other neighbor (see send_list)

    /** Metis Results */
    int* epart;     /// partition vector for the elements of the mesh
    int* npart;     /// partition vector for the points (nodes) of the mesh
    int objval;    /// resulting edgecut of total communication volume (classical distrib->zeros)

    MPI_Init(&argc, &argv);    /// Start MPI
    SCOREP_USER_REGION_DEFINE(OA_Phase);
    MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);    /// Get current process id
    MPI_Comm_size(MPI_COMM_WORLD, &num_procs);    /// get number of processes
    double elapsed_time, elapsed_time_max;
    FILE *pFile;
    if ( argc < 3 ) {
        fprintf(stderr, "Usage: ./gccg <input_file> <output_prefix> <partition_type>\n");
        MPI_Abort(MPI_COMM_WORLD, -1);
    }

    char *file_in = argv[1];
    char *out_prefix = argv[2];
    char *part_type = (argc == 3 ? "classical" : argv[3]);
    char file_vtk_out[50];
    char measure_out[20];
    /********** START INITIALIZATION **********/
    // read-in the input file
    elapsed_time = - MPI_Wtime();
    SCOREP_USER_OA_PHASE_BEGIN(OA_Phase, "OA_Phase", SCOREP_USER_REGION_TYPE_COMMON);
    int init_status = initialization(file_in, part_type, &nintci, &nintcf, &nextci, &nextcf, &lcc,
                                     &bs, &be, &bn, &bw, &bl, &bh, &bp, &su, &points_count, &points,
                                     &elems, &var, &cgup, &oc, &cnorm, &local_global_index,
                                     &global_local_index, &local_global_index_full, &lcc_local,
                                     &neighbors_count, &send_count, &send_list,
                                     &recv_count, &recv_list, &epart, &npart, &objval);
    elapsed_time += MPI_Wtime();
    MPI_Reduce(&elapsed_time, &elapsed_time_max, 1, MPI_DOUBLE, MPI_MAX, 0, MPI_COMM_WORLD);
    if (my_rank == 0) {
      sprintf(measure_out, "time--%d.txt", num_procs);
      pFile = fopen(measure_out, "a");
      fprintf(pFile, "%s Elapsed max --initialization time-init_status = %d: %f secs\n",
              argv[2], init_status, elapsed_time_max);
    }
    if (init_status != 0 && init_status != 1) {
        fprintf(stderr, "Failed to initialize data!\n");
        MPI_Abort(MPI_COMM_WORLD, my_rank);
    }
    num_elems = nintcf - nintci + 1;
    // test distribution
    /*if (my_rank == 2) {
        sprintf(file_vtk_out, "%s_cgup.vtk", out_prefix);
        test_distribution(file_in, file_vtk_out, local_global_index,
        num_elems, cgup);
    }*/
    // Implement this function in test_functions.c and call it here
    /*if (my_rank == 2) {
      sprintf(file_vtk_out, "%s_commlist.vtk", out_prefix);
      test_communication(file_in, file_vtk_out, local_global_index, num_elems,
       neighbors_count, send_count, send_list, recv_count, recv_list);
    }*/
    /********** END INITIALIZATION **********/

    /********** START COMPUTATIONAL LOOP **********/
    elapsed_time = - MPI_Wtime();
    int total_iters = compute_solution(max_iters, nintci, nintcf, nextcf, lcc, bp, bs, bw, bl, bn,
                                       be, bh, cnorm, var, su, cgup, &residual_ratio,
                                       local_global_index, global_local_index,
                                       lcc_local, neighbors_count,
                                       send_count, send_list, recv_count, recv_list);
    elapsed_time += MPI_Wtime();
    MPI_Reduce(&elapsed_time, &elapsed_time_max, 1, MPI_DOUBLE, MPI_MAX, 0, MPI_COMM_WORLD);
    if (my_rank == 0) {
      pFile = fopen(measure_out, "a");
      fprintf(pFile, "%s Elapsed max --computation time-init_status = %d: %f secs\n",
              argv[2], init_status, elapsed_time_max);
    }
    /********** END COMPUTATIONAL LOOP **********/

    /********** START FINALIZATION **********/
    elapsed_time = - MPI_Wtime();
    finalization(file_in, out_prefix, total_iters, residual_ratio, nintci, nintcf, points_count,
                 points, elems, var, cgup, su, local_global_index_full, init_status);
    elapsed_time += MPI_Wtime();
    MPI_Reduce(&elapsed_time, &elapsed_time_max, 1, MPI_DOUBLE, MPI_MAX, 0, MPI_COMM_WORLD);
    if (my_rank == 0) {
      pFile = fopen(measure_out, "a");
      fprintf(pFile, "%s Elapsed max --finalization time-init_status = %d: %f secs\n",
              argv[2], init_status, elapsed_time_max);
    }
    SCOREP_USER_OA_PHASE_END(OA_Phase);
    /********** END FINALIZATION **********/
    free(var);
    free(cgup);
    free(su);
    free(bp);
    free(bh);
    free(bl);
    free(bw);
    free(bn);
    free(be);
    free(bs);
    free(lcc_local);
    if (my_rank == 0) {
    free(cnorm);
    free(oc);
    free(elems);
    free(local_global_index);
    int i;
    for (i = 0; i < nintcf + 1; i++) {
        free(lcc[i]);
    }
    free(lcc);
    for (i = 0; i < points_count; i++) {
        free(points[i]);
    }
    free(points);
    }
    MPI_Finalize();    /// Cleanup MPI
    return 0;
}

