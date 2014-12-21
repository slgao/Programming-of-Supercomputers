/**
 * Finalization step - write results and other computational vectors to files
 *
 * @date 22-Oct-2012
 * @author V. Petkov
 */

#include <stdio.h>
#include <stdlib.h>
#include "util_write_files.h"
#include "mpi.h"
// #include "scorep/SCOREP_User.h"

void finalization(char* file_in, char* out_prefix, int total_iters, double residual_ratio,
                  int nintci, int nintcf, int points_count, int** points, int* elems, double* var,
                  double* cgup, double* su, int* local_global_index_full, int init_status) {
    char file_out[100];
    int i, j, k, my_rank, num_procs, *recvcnts, *displs, nintcf_all;
    double *var_all, *cgup_all, *su_all, *cgup_all_resort;
//     SCOREP_USER_REGION_DEFINE(OA_Phase);
//     SCOREP_USER_OA_PHASE_BEGIN(OA_Phase,"OA_Phase", SCOREP_USER_REGION_TYPE_COMMON);
    MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);
    MPI_Comm_size(MPI_COMM_WORLD, &num_procs);
    recvcnts = (int *) calloc(sizeof(int), num_procs);
    displs = (int *) calloc(sizeof(int), num_procs);
    MPI_Gather(&nintcf, 1, MPI_INT, recvcnts, 1, MPI_INT, 0, MPI_COMM_WORLD);
    if (my_rank == 0) {
      for (i = 0; i < num_procs; i++) {
        recvcnts[i] = recvcnts[i] + 1;
      }
      for (i = 0; i < num_procs; i++) {
        k = 0;
        if (i > 0) {
          for (j = 0; j < i; j++) {
            k = k + recvcnts[j];
          }
        }
        displs[i] = k;
      }
    }
    MPI_Reduce(&nintcf, &nintcf_all, 1, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
    if (my_rank == 0) {
      nintcf_all = nintcf_all + num_procs - 1;
      var_all = (double *) calloc(sizeof(double), (nintcf_all + 1));
      cgup_all = (double *) calloc(sizeof(double), (nintcf_all + 1));
      cgup_all_resort = (double *) calloc(sizeof(double), (nintcf_all + 1));
      su_all = (double *) calloc(sizeof(double), (nintcf_all + 1));
    }
    MPI_Gatherv(var, nintcf + 1, MPI_DOUBLE, var_all, recvcnts, displs, MPI_DOUBLE, 0,
                MPI_COMM_WORLD);
    MPI_Gatherv(cgup, nintcf + 1, MPI_DOUBLE, cgup_all, recvcnts, displs, MPI_DOUBLE, 0,
                MPI_COMM_WORLD);
//     MPI_Gatherv(su, nintcf + 1, MPI_DOUBLE, su_all, recvcnts, displs, MPI_DOUBLE, 0,
//                 MPI_COMM_WORLD);
    if (my_rank == 0) {
    sprintf(file_out, "%s_summary.out", out_prefix);
    int status = store_simulation_stats(file_in, file_out, nintci, nintcf_all, var_all, total_iters,
                                        residual_ratio);
    sprintf(file_out, "%s_data.vtk", out_prefix);
    vtk_write_unstr_grid_header(file_in, file_out, nintci, nintcf_all, points_count, points, elems);
    if (init_status == 1) {
    for (i = 0; i < nintcf_all + 1; i++) {
      cgup_all_resort[local_global_index_full[i]] = cgup_all[i];
    }
    vtk_append_double(file_out, "CGUP", nintci, nintcf_all, cgup_all_resort);
    } else {
    vtk_append_double(file_out, "CGUP", nintci, nintcf_all, cgup_all);
    }
    if ( status != 0 ) fprintf(stderr, "Error when trying to write to file %s\n", file_out);
    }
//     SCOREP_USER_OA_PHASE_END(OA_Phase);
}

