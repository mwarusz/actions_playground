#!/bin/bash

export YAKL_ARCH=
unset CXXFLAGS
unset FFLAGS
unset F77FLAGS
unset F90FLAGS

export CC=mpicc
export CXX=mpic++
export FC=mpifort

export OMPI_CC=gcc
export OMPI_CXX=g++
export OMPI_FC=gfortran

export YAKL_CXX_FLAGS="-DYAKL_PROFILE -DHAVE_MPI -O2 -I`nc-config --includedir`"
export YAKL_F90_FLAGS="-O2 -DSCREAM_DOUBLE_PRECISION -ffree-line-length-none"
export MY_LINK_FLAGS="-L`nc-config --libdir` -lnetcdf"
