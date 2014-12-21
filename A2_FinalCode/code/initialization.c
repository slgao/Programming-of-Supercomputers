/**
 * Initialization step - parse the input file, compute data distribution, initialize LOCAL computational arrays
 *
 * @date 22-Oct-2012
 * @author V. Petkov
 */

#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "util_read_files.h"
#include "initialization.h"
#include "metis.h"
#include "mpi.h"

int initialization(char* file_in, char* part_type, int* nintci, int* nintcf, int* nextci,
                   int* nextcf, int*** lcc, double** bs, double** be, double** bn, double** bw,
                   double** bl, double** bh, double** bp, double** su, int* points_count,
                   int*** points, int** elems, double** var, double** cgup, double** oc,
                   double** cnorm, int** local_global_index, int** global_local_index,
                   int** local_global_index_full, int** lcc_local,
                   int* neighbors_count, int** send_count, int*** send_list, int** recv_count,
                   int*** recv_list, int** epart, int** npart, int* objval) {
    /********** START INITIALIZATION **********/
    int my_rank, num_procs, num_aver, num_left, cell_rank;
    MPI_Status status;
    MPI_Comm_rank(MPI_COMM_WORLD, &my_rank);
    MPI_Comm_size(MPI_COMM_WORLD, &num_procs);
    int i = 0, j = 0, k = 0, l = 0, count, ine, inn, *displs, *p, *sendcnts,
    **templcc, *lcc_lin, *sendcnts_lcc, *displs_lcc, *tracking,
    *tracking_full_count, *tracking_full_list;
    idx_t ne, nn, *eptr, *eind, ncommon, nparts, ob, *epar, *npar;
    ncommon = 4;
    nparts = num_procs;
    p = (int *) calloc(nparts+1, sizeof(int)); /* displacement array used later in MPI_Scatterv*/
    displs = (int *) calloc(nparts, sizeof(int)); /* displacement array used later in MPI_Scatterv*/
    displs_lcc = (int *) calloc(nparts, sizeof(int));
    sendcnts = (int *) calloc(nparts, sizeof(int)); /* send counts used later in MPI_Scatterv*/
    sendcnts_lcc = (int *) calloc(nparts, sizeof(int));
    *cnorm = (double*) calloc(sizeof(double), 4);
    int recvcnt, recvcnt_lcc;  /* receive count used in MPI_Scatterv*/
    int nintci_local, nintcf_local, *lcc_local_cp;  // nextci_local, nextcf_local;
    double *bs_s, *be_s, *bn_s, *bw_s, *bl_s, *bh_s, *bp_s, *su_s, *cgup_s,
    *var_s;  /// sorted arrays
    double *bs_local, *be_local, *bn_local, *bw_local, *bl_local, *bh_local, *bp_local, *su_local,
    *cgup_local, *var_local;    /// local arrays
    if (my_rank == 0) {
    // read-in the input file
    int f_status = read_binary_geo(file_in, &*nintci, &*nintcf, &*nextci, &*nextcf, &*lcc, &*bs,
                                   &*be, &*bn, &*bw, &*bl, &*bh, &*bp, &*su, &*points_count,
                                   &*points, &*elems);
    if ( f_status != 0 ) return f_status;
    *var = (double*) calloc(sizeof(double), (*nextcf + 1));
    *cgup = (double*) calloc(sizeof(double), (*nextcf + 1));
    *oc = (double*) calloc(sizeof(double), (*nintcf + 1));
//     *cnorm = (double*) calloc(sizeof(double), (*nintcf + 1));
    // initialize the arrays
    for ( i = 0; i <= 10; i++ ) {
        (*oc)[i] = 0.0;
//         (*cnorm)[i] = 1.0;
    }
    for ( i = (*nintci); i <= (*nintcf); i++ ) {
        (*cgup)[i] = 0.0;
        (*var)[i] = 0.0;
    }
    for ( i = (*nextci); i <= (*nextcf); i++ ) {
        (*var)[i] = 0.0;
        (*cgup)[i] = 0.0;
        (*bs)[i] = 0.0;
        (*be)[i] = 0.0;
        (*bn)[i] = 0.0;
        (*bw)[i] = 0.0;
        (*bl)[i] = 0.0;
        (*bh)[i] = 0.0;
    }
    for ( i = (*nintci); i <= (*nintcf); i++ )
        (*cgup)[i] = 1.0 / ((*bp)[i]);
    }  // end of rank 0
    if (strcmp(part_type, "classical") !=0) {
    if (my_rank ==0) {
    // begin Metis  need to add if condition
    inn = *points_count;
    ine = (*nintcf - *nintci) + 1;
    }
    MPI_Bcast(&ine, 1, MPI_INT, 0, MPI_COMM_WORLD);
    MPI_Bcast(&inn, 1, MPI_INT, 0, MPI_COMM_WORLD);
    *epart = (int *) malloc((ine) * sizeof(int));
    eptr = (idx_t*) calloc(sizeof(idx_t), (ine + 1));
    ne = (idx_t)(ine);
    nn = (idx_t)(inn);
    for (i = 0; i < ine + 1; i++) {
      eptr[i] = i * 8;
    }
    eind = (idx_t *) malloc(((ine) * 8) * sizeof(idx_t));
    if (my_rank != 0) {
      *elems = (int*) malloc((ine) * 8 * sizeof(int));
    }
    MPI_Bcast(*elems, ine * 8, MPI_INT, 0, MPI_COMM_WORLD);
    for ( i = 0; i < (ine) * 8; i++ ) {
      eind[i] = (*elems)[i];
    }
    epar = (idx_t *) malloc((ne) * sizeof(idx_t));
    npar = (idx_t *) malloc((nn) * sizeof(idx_t));
    *npart = (int *) malloc((inn) * sizeof(int));
    int check;
    idx_t options[METIS_NOPTIONS];
    METIS_SetDefaultOptions(options);
    options[METIS_OPTION_PTYPE]=METIS_PTYPE_KWAY;
    check = METIS_PartMeshDual(&ne, &nn, eptr, eind, NULL, NULL, &ncommon, &nparts, NULL,
    options, &ob, epar, npar);
    // put data from epar and npar to epart and npart
    for (i = 0; i < ine; i++) {
      (*epart)[i] = (int)epar[i];
    }
    for (i = 0; i < inn; i++) {
      (*npart)[i] = (int)npar[i];
    }
    // generating the local_global_index_full
    *local_global_index_full = (int *) malloc((ine) * sizeof(int));
    for (j = 0; j < nparts; j++) {
        p[j] = k;
        for (i = 0; i < ine; i++) {
            if ((*epart)[i] == j) {
                (*local_global_index_full)[k] = i;
                k++;
            }
        }
    }
    p[nparts] = k;  // p finished generating
    for (i = 0; i < nparts; i++) {
      displs[i] = p[i];
    }
    for (i = 0; i < nparts; i++) {
      sendcnts[i] = p[i+1] - p[i];
    }
    for (i = 0; i < nparts; i++) {
        sendcnts_lcc[i] = 6 * sendcnts[i];
        displs_lcc[i] = 6 * displs[i];
    }
    if (my_rank ==0) {
      // linearize the lcc array and check if it is the internal cell
      lcc_lin = (int*) malloc(ine*6 * sizeof(int));
      for (i = 0; i < ine; i++) {
        for (j = 0; j < 6; j++) {
          lcc_lin[i * 6 + j] = (*lcc)[(*local_global_index_full)[i]][j];
        }
      }
    }
    // generating sorted global_local_index
    *global_local_index = (int *) malloc((ine) * sizeof(int));
    for (i = 0; i < nparts; i++) {
      k = 0;
      for (j = 0; j < ine; j++) {
        if ((*epart)[j] == i) {
          (*global_local_index)[j] = k;
          k++;
        }
      }
    }
    tracking_full_count = (int *) calloc(ine, sizeof(int));
    // eliminate the extra values in recv_list
    tracking_full_list = (int *) calloc(ine, sizeof(int));
    nintci_local = 0;
    nintcf_local = sendcnts[my_rank] - 1;
    *nintci = nintci_local;  // convert the index to local
    *nintcf = nintcf_local;
    if (my_rank ==0) {
    // generate the sorted arrays
    bs_s = (double *) malloc((ine) * sizeof(double));
    be_s = (double *) malloc((ine) * sizeof(double));
    bn_s = (double *) malloc((ine) * sizeof(double));
    bw_s = (double *) malloc((ine) * sizeof(double));
    bl_s = (double *) malloc((ine) * sizeof(double));
    bh_s = (double *) malloc((ine) * sizeof(double));
    bp_s = (double *) malloc((ine) * sizeof(double));
    su_s = (double *) malloc((ine) * sizeof(double));
    cgup_s = (double *) malloc((ine) * sizeof(double));
    var_s = (double *) malloc((ine) * sizeof(double));
    for (i = 0; i< ine; i++) {
        bs_s[i] = (*bs)[(*local_global_index_full)[i]];
        be_s[i] = (*be)[(*local_global_index_full)[i]];
        bn_s[i] = (*bn)[(*local_global_index_full)[i]];
        bw_s[i] = (*bw)[(*local_global_index_full)[i]];
        bl_s[i] = (*bl)[(*local_global_index_full)[i]];
        bh_s[i] = (*bh)[(*local_global_index_full)[i]];
        bp_s[i] = (*bp)[(*local_global_index_full)[i]];
        su_s[i] = (*su)[(*local_global_index_full)[i]];
        cgup_s[i] = (*cgup)[(*local_global_index_full)[i]];
        var_s[i] = (*var)[(*local_global_index_full)[i]];
    }
    }  // end of rank 0
    // multiprocessors execute the following
    recvcnt = sendcnts[my_rank];  // all the procs need to know the sendcnts
    recvcnt_lcc = sendcnts_lcc[my_rank];
    *local_global_index = (int *) malloc((sendcnts[my_rank]) * sizeof(int));
    bs_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    be_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    bn_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    bw_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    bl_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    bh_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    bp_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    su_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    cgup_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    var_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *lcc_local = (int *) malloc((sendcnts_lcc[my_rank]) * sizeof(int));
    lcc_local_cp = (int *) malloc((sendcnts_lcc[my_rank]) * sizeof(int));
    // begin to scatter
    MPI_Scatterv((*local_global_index_full), sendcnts, displs, MPI_INT, *local_global_index,
                 recvcnt, MPI_INT, 0, MPI_COMM_WORLD);
    MPI_Scatterv(bs_s, sendcnts, displs, MPI_DOUBLE, bs_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(be_s, sendcnts, displs, MPI_DOUBLE, be_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(bn_s, sendcnts, displs, MPI_DOUBLE, bn_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(bw_s, sendcnts, displs, MPI_DOUBLE, bw_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(bl_s, sendcnts, displs, MPI_DOUBLE, bl_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(bh_s, sendcnts, displs, MPI_DOUBLE, bh_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(bp_s, sendcnts, displs, MPI_DOUBLE, bp_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(su_s, sendcnts, displs, MPI_DOUBLE, su_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(cgup_s, sendcnts, displs, MPI_DOUBLE, cgup_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(lcc_lin, sendcnts_lcc, displs_lcc, MPI_INT, *lcc_local, recvcnt_lcc,
                 MPI_INT, 0, MPI_COMM_WORLD);
    MPI_Scatterv(var_s, sendcnts, displs, MPI_DOUBLE, var_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    /**  ************* begin to set send, recv count and list **************  **/
    ///  allocate send_count recv_count
    *send_count = (int *) calloc(nparts, sizeof(int));
    *recv_count = (int *) calloc(nparts, sizeof(int));
    tracking = (int *) calloc(nparts, sizeof(int));
    // send_count one cell counted once
    for (i = 0; i < *nintcf + 1; i++) {
      for (j = 0; j < 6; j++) {
        if ((*lcc_local)[i * 6 + j] < ine) {
          if ((*epart)[(*lcc_local)[i * 6 + j]] != my_rank) {
            tracking[(*epart)[(*lcc_local)[i * 6 + j]]] = 1;
          }
        }
      }
      for (k = 0; k < nparts; k++) {
         if (tracking[k] == 1) {
           (*send_count)[k]++;
         }
      }
      for (l = 0; l < nparts; l++) {  // initialize the tracking array to zeros
        tracking[l] = 0;
      }
    }
    ///  recv_count
    for (i = 0; i < recvcnt_lcc; i++) {
      if ((*lcc_local)[i] < ine) {
        if ((*epart)[(*lcc_local)[i]] != my_rank) {
          if (tracking_full_count[(*lcc_local)[i]] == 0) {
            (*recv_count)[(*epart)[(*lcc_local)[i]]]++;
            tracking_full_count[(*lcc_local)[i]] = 1;
          }
        }
      }
    }
    ///  allocate send_list
    for (i = 0; i < nparts; i++) {  // initialize the tracking array
      tracking[i] = 0;
    }
    *send_list = (int **) calloc(nparts, sizeof(int*));
    for (i = 0; i < nparts; i++) {
      (*send_list)[i] = (int *) calloc((*send_count)[i], sizeof(int));
    }
    for (j = 0; j < nparts; j++) {
      count = 0;
      for (i = 0; i < *nintcf + 1; i++) {
        for (k = 0; k < 6; k++) {
          if ((*lcc_local)[i * 6 + k] < ine) {
            if ((*epart)[(*lcc_local)[i * 6 + k]] != my_rank &&
               (*epart)[(*lcc_local)[i * 6 + k]] == j) {
                tracking[(*epart)[(*lcc_local)[i * 6 + k]]] = 1;
            }
          }
        }
        if (tracking[j] == 1) {
            (*send_list)[j][count] = i;
            count++;
        }
        for (l = 0; l < nparts; l++) {
          tracking[l] = 0;
        }
      }
    }
    ///  recv_list
    *recv_list = (int **) calloc(nparts, sizeof(int*));
    for (i = 0; i < nparts; i++) {
      (*recv_list)[i] = (int *) calloc((*recv_count)[i], sizeof(int));
    }
    k = 0;
    for (j = 0; j < nparts; j++) {
      count = 0;
      for (i = 0; i < recvcnt_lcc; i++) {
        if ((*lcc_local)[i] < ine) {
          if ((*epart)[(*lcc_local)[i]] != my_rank && (*epart)[(*lcc_local)[i]] == j) {
            if (tracking_full_list[(*lcc_local)[i]] == 0) {
              (*recv_list)[j][count] = (*lcc_local)[i];
              count++;
              tracking_full_list[(*lcc_local)[i]] = *nintcf + k + 1;
              // change lcc_local_cp to local index including communicated values
              lcc_local_cp[i] = *nintcf + k + 1;
              k++;
            } else {
              // point the replicated values to the right place
              lcc_local_cp[i] = tracking_full_list[(*lcc_local)[i]];
            }
          }
        }
      }
    }
    for (i = 0; i < recvcnt_lcc; i++) {
      if ((*lcc_local)[i] < ine) {
        if ((*epart)[(*lcc_local)[i]] == my_rank) {
          lcc_local_cp[i] = (*global_local_index)[(*lcc_local)[i]];
        }
      }
    }
    for (i = 0; i < recvcnt_lcc; i++) {
      if ((*lcc_local)[i] >= ine) {
          lcc_local_cp[i] = *nintcf + k + 1;
      }
    }
    // copy the values in lcc_local_cp into lcc_local
    for (i = 0; i < recvcnt_lcc; i++) {
      (*lcc_local)[i] = lcc_local_cp[i];
    }
    /**  ************* end of setting send, recv count and list **************  **/
    // set neighbors_count
    *neighbors_count = nparts;
    if (my_rank == 0) {
      free(*bs);
      free(*be);
      free(*bn);
      free(*bw);
      free(*bl);
      free(*bh);
      free(*bp);
      free(*su);
      free(*cgup);
      free(*var);
      free(bs_s);
      free(be_s);
      free(bn_s);
      free(bw_s);
      free(bl_s);
      free(bh_s);
      free(bp_s);
      free(su_s);
      free(cgup_s);
      free(lcc_lin);
    }
    *bs = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *be = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *bn = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *bw = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *bl = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *bh = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *bp = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *su = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *cgup = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *var = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    for (i = 0; i < sendcnts[my_rank]; i++) {
        (*bs)[i] = bs_local[i];
        (*be)[i] = be_local[i];
        (*bn)[i] = bn_local[i];
        (*bw)[i] = bw_local[i];
        (*bl)[i] = bl_local[i];
        (*bh)[i] = bh_local[i];
        (*bp)[i] = bp_local[i];
        (*su)[i] = su_local[i];
        (*cgup)[i] = cgup_local[i];
        (*var)[i] = var_local[i];
    }
    free(tracking_full_count);
    free(tracking);
    free(tracking_full_list);
    free(lcc_local_cp);
    free(bs_local);
    free(be_local);
    free(bn_local);
    free(bw_local);
    free(bl_local);
    free(bh_local);
    free(bp_local);
    free(su_local);
    free(cgup_local);
    free(var_local);
//     printf("finished METIS");
    return 1;
    } else {
    // begin classical distribution
    if (my_rank == 0) {
    ine = (*nintcf - *nintci) + 1;
    num_aver = ine/nparts;  // number of elems in each proc
    num_left = ine%nparts;  // the parts left in the last proc
    for (i = 0; i < nparts - 1; i++) {
      sendcnts[i] = num_aver;
    }
    sendcnts[nparts - 1] = num_aver + num_left;
    for (i = 0; i < nparts; i++) {
      displs[i] = i * num_aver;
    }
    // generating local_global_index_full
    (*local_global_index_full) = (int *) malloc((ine) * sizeof(int));
    for (i = 0; i < ine; i++) {
        (*local_global_index_full)[i] = i;
    }
    // linearize the lcc array
    lcc_lin = (int*) malloc(ine*6 * sizeof(int));
    for (i = *nintci; i < *nintcf + 1; i++) {
      for (j = 0; j < 6; j++) {
          lcc_lin[i * 6 + j] = (*lcc)[(*local_global_index_full)[i]][j];
      }
    }
    for (i = 0; i < nparts; i++) {
        sendcnts_lcc[i] = 6 * sendcnts[i];
        displs_lcc[i] = 6 * displs[i];
    }
    }  // end of rank 0
    MPI_Bcast(&ine, 1, MPI_INT, 0, MPI_COMM_WORLD);
    MPI_Bcast(&num_aver, 1, MPI_INT, 0, MPI_COMM_WORLD);
    MPI_Bcast(&num_left, 1, MPI_INT, 0, MPI_COMM_WORLD);
    MPI_Bcast(nintci, 1, MPI_INT, 0, MPI_COMM_WORLD);
    MPI_Bcast(nintcf, 1, MPI_INT, 0, MPI_COMM_WORLD);
    tracking_full_count = (int *) calloc(ine, sizeof(int));
    // eliminate the extra values in recv_list
    tracking_full_list = (int *) calloc(ine, sizeof(int));
    // generate global_local_index
    *global_local_index = (int *) malloc((ine) * sizeof(int));
    k = 0;
    j = 0;
    for (i = 0; i < ine; i++) {
      if (k > num_aver - 1 && j < nparts - 1) {
        k = 0;
        j++;
      }
      (*global_local_index)[i] = k;
      k++;
    }
//     MPI_Bcast(*cnorm, ine, MPI_DOUBLE, 0, MPI_COMM_WORLD);
    nintci_local = 0;
    if (my_rank == nparts - 1) {
      nintcf_local = num_left + num_aver - 1;
    } else {
      nintcf_local = num_aver - 1;
    }
    *nintci = nintci_local;  // convert the index to local
    *nintcf = nintcf_local;
    MPI_Bcast(sendcnts, nparts, MPI_INT, 0, MPI_COMM_WORLD);
    MPI_Bcast(sendcnts_lcc, nparts, MPI_INT, 0, MPI_COMM_WORLD);
    recvcnt = sendcnts[my_rank];
    recvcnt_lcc = sendcnts_lcc[my_rank];
    lcc_local_cp = (int *) malloc((sendcnts_lcc[my_rank]) * sizeof(int));
    *lcc_local = (int *) malloc((sendcnts_lcc[my_rank]) * sizeof(int));
    *local_global_index = (int *) malloc((sendcnts[my_rank]) * sizeof(int));
    var_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    bs_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    be_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    bn_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    bw_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    bl_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    bh_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    bp_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    su_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    cgup_local = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    MPI_Scatterv((*local_global_index_full), sendcnts, displs, MPI_INT, *local_global_index,
                 recvcnt, MPI_INT, 0, MPI_COMM_WORLD);
    MPI_Scatterv(*bs, sendcnts, displs, MPI_DOUBLE, bs_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(*be, sendcnts, displs, MPI_DOUBLE, be_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(*bn, sendcnts, displs, MPI_DOUBLE, bn_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(*bw, sendcnts, displs, MPI_DOUBLE, bw_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(*bl, sendcnts, displs, MPI_DOUBLE, bl_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(*bh, sendcnts, displs, MPI_DOUBLE, bh_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(*bp, sendcnts, displs, MPI_DOUBLE, bp_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(*su, sendcnts, displs, MPI_DOUBLE, su_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(*cgup, sendcnts, displs, MPI_DOUBLE, cgup_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    MPI_Scatterv(lcc_lin, sendcnts_lcc, displs_lcc, MPI_INT, *lcc_local, recvcnt_lcc,
                 MPI_INT, 0, MPI_COMM_WORLD);
    MPI_Scatterv(*var, sendcnts, displs, MPI_DOUBLE, var_local, recvcnt,
                 MPI_DOUBLE, 0, MPI_COMM_WORLD);
    /**  ************* begin to set send, recv count and list **************  **/
    ///  allocate send_count recv_count
    *send_count = (int *) calloc(nparts, sizeof(int));
    *recv_count = (int *) calloc(nparts, sizeof(int));
    tracking = (int *) calloc(nparts, sizeof(int));
    // send_count one cell counted once
    for (i = 0; i < *nintcf + 1; i++) {
      for (j = 0; j < 6; j++) {
        if ((*lcc_local)[i * 6 + j] < ine) {
          cell_rank = (int)(*lcc_local)[i * 6 + j]/num_aver;
          if (cell_rank == nparts)
            cell_rank = nparts - 1;
          if (cell_rank != my_rank) {
            tracking[cell_rank] = 1;
          }
        }
      }
      for (k = 0; k < nparts; k++) {
         if (tracking[k] == 1) {
           (*send_count)[k]++;
         }
      }
      for (l = 0; l < nparts; l++) {  // initialize the tracking array to zeros
        tracking[l] = 0;
      }
    }
    ///  recv_count
    for (i = 0; i < recvcnt_lcc; i++) {
      if ((*lcc_local)[i] < ine) {
        cell_rank = (int)(*lcc_local)[i]/num_aver;
        if (cell_rank == nparts)
          cell_rank = nparts - 1;
        if (cell_rank != my_rank) {
          if (tracking_full_count[(*lcc_local)[i]] == 0) {
            (*recv_count)[cell_rank]++;
            tracking_full_count[(*lcc_local)[i]] = 1;
          }
        }
      }
    }
    ///  allocate send_list
    for (i = 0; i < nparts; i++) {  // initialize the tracking array
          tracking[i] = 0;
    }
    *send_list = (int **) calloc(nparts, sizeof(int*));
    for (i = 0; i < nparts; i++) {
      (*send_list)[i] = (int *) calloc((*send_count)[i], sizeof(int));
    }
    for (j = 0; j < nparts; j++) {
      count = 0;
      for (i = 0; i < *nintcf + 1; i++) {
        for (k = 0; k < 6; k++) {
          if ((*lcc_local)[i * 6 + k] < ine) {
            cell_rank = (int)(*lcc_local)[i * 6 + k]/num_aver;
            if (cell_rank == nparts)
              cell_rank = nparts - 1;
            if (cell_rank != my_rank && cell_rank == j) {
              tracking[cell_rank] = 1;
            }
          }
        }
        if (tracking[j] == 1) {
            (*send_list)[j][count] = i;
            count++;
        }
        for (l = 0; l < nparts; l++) {
          tracking[l] = 0;
        }
      }
    }
    ///  recv_list
    *recv_list = (int **) calloc(nparts, sizeof(int*));
    for (i = 0; i < nparts; i++) {
      (*recv_list)[i] = (int *) calloc((*recv_count)[i], sizeof(int));
    }
    k = 0;
    for (j = 0; j < nparts; j++) {
      count = 0;
      for (i = 0; i < recvcnt_lcc; i++) {
        if ((*lcc_local)[i] < ine) {
          cell_rank = (int)(*lcc_local)[i]/num_aver;
          if (cell_rank == nparts)
            cell_rank = nparts - 1;
          if (cell_rank != my_rank && cell_rank == j) {
            if (tracking_full_list[(*lcc_local)[i]] == 0) {
              (*recv_list)[j][count] = (*lcc_local)[i];
              count++;
              tracking_full_list[(*lcc_local)[i]] = *nintcf + k + 1;
              // change lcc_local_cp to local index including communicated values
              lcc_local_cp[i] = *nintcf + k + 1;
              k++;
            } else {
               // point the replicated values to the right place
               lcc_local_cp[i] = tracking_full_list[(*lcc_local)[i]];
            }
          }
        }
      }
    }
    for (i = 0; i < recvcnt_lcc; i++) {
      if ((*lcc_local)[i] >= ine) {
          lcc_local_cp[i] = *nintcf + k + 1;
      }
    }
    for (i = 0; i < recvcnt_lcc; i++) {
      if ((*lcc_local)[i] < ine) {
        cell_rank = (int)(*lcc_local)[i]/num_aver;
        if (cell_rank == nparts)
          cell_rank = nparts - 1;
        if (cell_rank == my_rank) {
          lcc_local_cp[i] = (*global_local_index)[(*lcc_local)[i]];
        }
      }
    }
    // copy the values in lcc_local_cp into lcc_local
    for (i = 0; i < recvcnt_lcc; i++) {
      (*lcc_local)[i] = lcc_local_cp[i];
    }
    /**  ************* end of setting send, recv count and list **************  **/
    // set neighbors_count
    *neighbors_count = nparts;
    if (my_rank == 0) {
      free(*bs);
      free(*be);
      free(*bn);
      free(*bw);
      free(*bl);
      free(*bh);
      free(*bp);
      free(*su);
      free(*cgup);
      free(*var);
      free(lcc_lin);
    }
    *bs = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *be = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *bn = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *bw = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *bl = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *bh = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *bp = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *su = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *cgup = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    *var = (double *) malloc((sendcnts[my_rank]) * sizeof(double));
    for (i = 0; i < sendcnts[my_rank]; i++) {
        (*bs)[i] = bs_local[i];
        (*be)[i] = be_local[i];
        (*bn)[i] = bn_local[i];
        (*bw)[i] = bw_local[i];
        (*bl)[i] = bl_local[i];
        (*bh)[i] = bh_local[i];
        (*bp)[i] = bp_local[i];
        (*su)[i] = su_local[i];
        (*cgup)[i] = cgup_local[i];
        (*var)[i] = var_local[i];
    }
    free(tracking);
    free(tracking_full_count);
    free(tracking_full_list);
//     printf("finished CLASSICAL");
    return 0;
    }
}









