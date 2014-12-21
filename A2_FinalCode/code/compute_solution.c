/**
 * Computational loop
 *
 * @file compute_solution.c
 * @date 22-Oct-2012
 * @author V. Petkov
 */
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "mpi.h"

int compute_solution(const int max_iters, int nintci, int nintcf, int nextcf, int** lcc, double* bp,
                     double* bs, double* bw, double* bl, double* bn, double* be, double* bh,
                     double* cnorm, double* var, double *su, double* cgup, double* residual_ratio,
                     int* local_global_index, int* global_local_index,
                     int* lcc_local, int neighbors_count,
                     int* send_count, int** send_list, int* recv_count, int** recv_list) {
    int iter = 1;
    int if1 = 0;
    int if2 = 0;
    int nor = 1;
    int nor1 = nor - 1;
    int nc = 0;
    int i = 0, j = 0, k = 0, num_block, nintcf_all, my_rank, num_procs, *recvcnts, *displs,
    *block_length, *block_displ, *recv_list_from_other, recv_count_from_other, displs_direc1
    , num_recv;
    double occ_sum, omega_sum, res_updated_sum, resref_sum;
    MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);
    MPI_Comm_size(MPI_COMM_WORLD, &num_procs);
    MPI_Datatype type[100];
    MPI_Status status;
    recvcnts = (int *) calloc(sizeof(int), num_procs);
    displs = (int *) calloc(sizeof(int), num_procs);
    MPI_Bcast(&nextcf, 1, MPI_INT, 0, MPI_COMM_WORLD);
    MPI_Gather(&nintcf, 1, MPI_INT, recvcnts, 1, MPI_INT, 0, MPI_COMM_WORLD);
    for (i = 0; i < num_procs; i++) {
      k = 0;
        if (i > 0) {
          for (j = 0; j < i; j++) {
            k = k + send_count[j];
          }
        }
        displs[i] = k;
      }
    // get the total length of the array
    MPI_Reduce(&nintcf, &nintcf_all, 1, MPI_INT, MPI_SUM, 0, MPI_COMM_WORLD);
    MPI_Bcast(&nintcf_all, 1, MPI_INT, 0, MPI_COMM_WORLD);
    nintcf_all = nintcf_all + num_procs - 1;
    // generate MPI_Datatype
    recv_count_from_other = 0;
    for (i = 0; i < num_procs; i++) {
      recv_count_from_other += send_count[i];
    }
    recv_list_from_other = (int *) calloc(sizeof(int), recv_count_from_other);
    for (i = 0; i < num_procs; i++)
      // each process has its own recv_list_from_other
      MPI_Gatherv(&recv_list[i][0], recv_count[i], MPI_INT, recv_list_from_other, send_count,
                  displs, MPI_INT, i, MPI_COMM_WORLD);
    // generating the newtype
    for (i = 0; i < num_procs; i++) {
      num_block = send_count[i];
      block_length = (int *) calloc(sizeof(int), num_block);
      for (j= 0; j < num_block; j++) {
        block_length[j] = block_length[j] + 1;
      }
      block_displ = (int *) calloc(sizeof(int), num_block);
      k = 0;
      for (j = 0; j < num_block; j++) {
        block_displ[k] = global_local_index[recv_list_from_other[displs[i] + j]];
        k++;
      }
      // each processor has a type array
      MPI_Type_indexed(num_block, block_length, block_displ, MPI_DOUBLE, &type[i]);
      MPI_Type_commit(&type[i]);
      free(block_length);
      free(block_displ);
    }
    // generate MPI_Datatype
    num_recv = 0;
    for (i = 0; i < num_procs; i++) {
      num_recv = num_recv + recv_count[i];
    }
    int nomax = 3;
    /** the reference residual*/
    double resref = 0.0;
    /** array storing residuals */
    double *resvec = (double *) calloc(sizeof(double), (nintcf + 1));
    // initialize the reference residual
    for ( nc = nintci; nc <= nintcf; nc++ ) {
        resvec[nc] = su[nc];
        resref = resref + resvec[nc] * resvec[nc];
    }
    MPI_Allreduce(&resref, &resref_sum, 1, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);
    resref_sum = sqrt(resref_sum);
    if ( resref_sum < 1.0e-15 ) {
        fprintf(stderr, "Residue sum less than 1.e-15 - %lf\n", resref_sum);
        return 0;
    }
    /** the computation vectors */
    double *direc1 = (double *) calloc(sizeof(double), (nintcf + num_recv + 2));
    double *direc2 = (double *) calloc(sizeof(double), (nextcf + 1));
    double *adxor1 = (double *) calloc(sizeof(double), (nintcf + 1));
    double *adxor2 = (double *) calloc(sizeof(double), (nintcf + 1));
    double *dxor1 = (double *) calloc(sizeof(double), (nintcf + 1));
    double *dxor2 = (double *) calloc(sizeof(double), (nintcf + 1));
    double *cnorm_sum = (double *) calloc(sizeof(double), 4);
    for (i = 0; i < 4; i++)
      cnorm_sum[i]++;
    direc1[nintcf + num_recv + 1] = 0;
    while ( iter < max_iters ) {
        /**********  START COMP PHASE 1 **********/
        // update the old values of direc
        for ( nc = nintci; nc <= nintcf; nc++ ) {
            direc1[nc] = direc1[nc] + resvec[nc] * cgup[nc];
        }
        /// communicate the direc1
        for (i = 0; i < num_procs; i++) {
          if (my_rank != i && send_count[i] != 0) {
            MPI_Send(direc1, 1, type[i], i, 0, MPI_COMM_WORLD);
          }
          if (i == my_rank) {
            displs_direc1 = 0;
            for (j = 0; j < num_procs; j++) {
              if (recv_count[j] != 0) {
                MPI_Recv(&direc1[nintcf + 1 + displs_direc1], recv_count[j], MPI_DOUBLE, j, 0,
                         MPI_COMM_WORLD, &status);  // it is wrong here in the buffer address
                displs_direc1 += recv_count[j];
              }
            }
          }
        }
        // compute new guess (approximation) for direc
        for ( nc = nintci; nc <= nintcf; nc++ ) {
            direc2[nc] = bp[nc] * direc1[nc] - bs[nc] * direc1[lcc_local[nc * 6]]
                         - bw[nc] * direc1[lcc_local[nc * 6 + 3]] - bl[nc] *
                         direc1[lcc_local[nc * 6 + 4]]
                         - bn[nc] * direc1[lcc_local[nc * 6 + 2]] - be[nc] *
                         direc1[lcc_local[nc * 6 + 1]]
                         - bh[nc] * direc1[lcc_local[nc * 6 + 5]];
        }
        /********** END COMP PHASE 1 **********/
        /********** START COMP PHASE 2 **********/
        // execute normalization steps
        double oc1, oc2, occ;
        if ( nor1 == 1 ) {
            oc1 = 0;
            occ = 0;
            for ( nc = nintci; nc <= nintcf; nc++ ) {
                occ = occ + adxor1[nc] * direc2[nc];
            }
            MPI_Allreduce(&occ, &occ_sum, 1, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);
            // oc1 = occ / cnorm[1];
            oc1 = occ_sum / cnorm_sum[1];
            for ( nc = nintci; nc <= nintcf; nc++ ) {
                direc2[nc] = direc2[nc] - oc1 * adxor1[nc];
                direc1[nc] = direc1[nc] - oc1 * dxor1[nc];
            }
            if1++;
        } else {
            if ( nor1 == 2 ) {
                oc1 = 0;
                occ = 0;
                for ( nc = nintci; nc <= nintcf; nc++ ) {
                    occ = occ + adxor1[nc] * direc2[nc];
                }
                MPI_Allreduce(&occ, &occ_sum, 1, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);
                // oc1 = occ / cnorm[1];
                oc1 = occ_sum / cnorm_sum[1];
                oc2 = 0;
                occ = 0;
                for ( nc = nintci; nc <= nintcf; nc++ ) {
                    occ = occ + adxor2[nc] * direc2[nc];
                }
                MPI_Allreduce(&occ, &occ_sum, 1, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);
                // oc2 = occ / cnorm[2];
                oc2 = occ_sum / cnorm_sum[2];
                for ( nc = nintci; nc <= nintcf; nc++ ) {
                    direc2[nc] = direc2[nc] - oc1 * adxor1[nc] - oc2 * adxor2[nc];
                    direc1[nc] = direc1[nc] - oc1 * dxor1[nc] - oc2 * dxor2[nc];
                }
                if2++;
            }
        }
        // compute the new residual
        cnorm[nor] = 0;
        double omega = 0;
        for ( nc = nintci; nc <= nintcf; nc++ ) {
            cnorm[nor] = cnorm[nor] + direc2[nc] * direc2[nc];
            omega = omega + resvec[nc] * direc2[nc];
        }
        MPI_Allreduce(&cnorm[nor], &cnorm_sum[nor], 1, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);
        MPI_Allreduce(&omega, &omega_sum, 1, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);
        // omega = omega / cnorm[nor];
        omega_sum = omega_sum / cnorm_sum[nor];
        double res_updated = 0.0;
        for ( nc = nintci; nc <= nintcf; nc++ ) {
            // var[nc] = var[nc] + omega * direc1[nc];
            var[nc] = var[nc] + omega_sum * direc1[nc];
            // resvec[nc] = resvec[nc] - omega * direc2[nc];
            resvec[nc] = resvec[nc] - omega_sum * direc2[nc];
            res_updated = res_updated + resvec[nc] * resvec[nc];
        }
        MPI_Allreduce(&res_updated, &res_updated_sum, 1, MPI_DOUBLE, MPI_SUM, MPI_COMM_WORLD);
        res_updated_sum = sqrt(res_updated_sum);
        *residual_ratio = res_updated_sum  / resref_sum;
        // exit on no improvements of residual
        if ( *residual_ratio <= 1.0e-10 ) break;
        iter++;
        // prepare additional arrays for the next iteration step
        if ( nor == nomax ) {
            nor = 1;
        } else {
            if ( nor == 1 ) {
                for ( nc = nintci; nc <= nintcf; nc++ ) {
                    dxor1[nc] = direc1[nc];
                    adxor1[nc] = direc2[nc];
                }
            } else {
                if ( nor == 2 ) {
                    for ( nc = nintci; nc <= nintcf; nc++ ) {
                        dxor2[nc] = direc1[nc];
                        adxor2[nc] = direc2[nc];
                    }
                }
            }
            nor++;
        }
        nor1 = nor - 1;
        /********** END COMP PHASE 2 **********/
    }
    free(resvec);
    free(direc1);
    free(direc2);
    free(adxor1);
    free(adxor2);
    free(dxor1);
    free(dxor2);
    // free added variable memories
    free(recvcnts);
    free(displs);
    return iter;
}

