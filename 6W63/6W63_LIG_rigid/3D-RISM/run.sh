#!/bin/sh
mpiexec -np 24 rism3d.snglpnt.MPI --pdb 6W63_LIG_rigid.pdb --prmtop 6W63_LIG_rigid.prmtop --traj 6W63_LIG_rigid.nc --xvv cSPCE_pse3.xvv --buffer 0.0 --tolerance 1e-3,1e-6 --grdspc 0.5 --closure kh,pse2,pse3 --uccoeff 0.03359142,-3.364778,-0.0005104617,0.01040742 --mdiis_restart 10.0 --mdiis_nvec 5 --mdiis_del 0.7 --maxstep 10000 --centering 3 --molReconstruct --notreeDCF --notreeTCF --notreeCoulomb --treeDCFOrder 8 --treeTCFOrder 6 --treeCoulombOrder 10 --treeDCFMAC 0.3 --treeTCFMAC 0.4 --treeCoulombMAC 0.3 --treeDCFN0 500 --treeTCFN0 500 --treeCoulombN0 500 --asympKSpaceTolerance -1.0 --ljTolerance -1.0 --chargeSmear 1.0 --volfmt dx --npropagate 0 --mdiis_method 0 --verbose 1 --entropicDecomp --guv g --exchem exchem --solvene Eww --entropy entropy --potUV Esw --solvcut -1 > rism.out
