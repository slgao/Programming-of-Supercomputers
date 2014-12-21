/**
 * Functions to test the data distribution and communication lists creation algorithms
 *
 * @date 22-Oct-2012
 * @author V. Petkov
 */
#include <stdlib.h>
#include <stdio.h>
#include "util_read_files.h"
#include "util_write_files.h"
#include "test_functions.h"
#include "mpi.h"

int test_distribution(char *file_in, char *file_vtk_out, int *local_global_index, int num_elems,
                      double *cgup) {
    int my_rank, num_procs, i;
    int Nintci, Nintcf, Nextci, Nextcf, total_elems, **Points, *Elems, Points_count, **Lcc;
    double *Bs, *Be, *Bn, *Bw, *Bl, *Bh, *Bp, *Su, *distr;
    MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);
    MPI_Comm_size(MPI_COMM_WORLD, &num_procs);
    char var_name[50] = "cgup";
    int f_status = read_binary_geo(file_in, &Nintci, &Nintcf, &Nextci, &Nextcf, &Lcc, &Bs,
                                   &Be, &Bn, &Bw, &Bl, &Bh, &Bp, &Su, &Points_count,
                                   &Points, &Elems);
    if ( f_status != 0 ) return f_status;
    total_elems = Nintcf - Nintci +1;
    distr = (double *) calloc(total_elems, sizeof(double));
    // copy values in cgup into distr
    for (i = 0; i < num_elems; i++) {
         distr[local_global_index[i]] = cgup[i];
    }
    vtk_write_unstr_grid_header(file_in, file_vtk_out,
                                 Nintci, Nintcf, Points_count, Points,
                                 Elems);
    vtk_append_double(file_vtk_out, var_name, Nintci, Nintcf, distr);
    printf("generating %s ----", file_vtk_out);
    return -1;
}

int test_communication(char *file_in, char *file_vtk_out, int *local_global_index, int num_elems,
                       int neighbors_count, int* send_count, int** send_list, int* recv_count,
                       int** recv_list) {
    int my_rank, num_procs, i, j;
    int Nintci, Nintcf, Nextci, Nextcf, total_elems, **Points, *Elems, Points_count,
    **Lcc, *commlist;
    double *Bs, *Be, *Bn, *Bw, *Bl, *Bh, *Bp, *Su, *distr;
    MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);
    MPI_Comm_size(MPI_COMM_WORLD, &num_procs);
    char var_name[50] = "commlist";
    int f_status = read_binary_geo(file_in, &Nintci, &Nintcf, &Nextci, &Nextcf, &Lcc, &Bs,
                                   &Be, &Bn, &Bw, &Bl, &Bh, &Bp, &Su, &Points_count,
                                   &Points, &Elems);
    if ( f_status != 0 ) return f_status;
    total_elems = Nintcf - Nintci +1;
    commlist = (int *) calloc(total_elems, sizeof(int));
    for (i = 0; i < num_elems; i++) {
      commlist[local_global_index[i]] = 15;
    }
    for (i = 0; i < neighbors_count; i++) {
      if (recv_count[i] > 0) {
        for (j = 0; j < recv_count[i]; j++) {
          commlist[recv_list[i][j]] = 5;
        }
      }
    }
    for (i = 0; i < neighbors_count; i++) {
      if (send_count[i] > 0) {
        for (j = 0; j < send_count[i]; j++) {
          commlist[local_global_index[send_list[i][j]]] = 10;
        }
      }
    }
    vtk_write_unstr_grid_header(file_in, file_vtk_out,
                                 Nintci, Nintcf, Points_count, Points,
                                 Elems);
    vtk_append_integer(file_vtk_out, var_name, Nintci, Nintcf, commlist);
    printf("generating %s ----", file_vtk_out);
    return -1;
}














