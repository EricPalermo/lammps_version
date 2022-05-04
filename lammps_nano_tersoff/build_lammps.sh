#!/bin/bash

#Load modules
module load cmake/3.20.3 intel/18.0.0.128 openmpi-intel/4.1 mkl/18.0.0.128

#Initiate and update submodules
git submodule init
git submodule update LAMMPS-UEFEX
git submodule update lammps


#copy external files into src folder
cp -r LAMMPS-UEFEX/UEFEX/ lammps/src/.
mv lammps/src/UEFEX/domain.cpp lammps/src/.
mkdir lammps/src/TERSOFF
cp tersoff_potential/pair_tersoff.* lammps/src/TERSOFF

#update CMake files with references to UEFEX
cp CMakeLists.txt lammps/cmake
cp all_off.cmake lammps/cmake/presets
cp all_on.cmake lammps/cmake/presets

#Create a build folder
mkdir lammps/build
cd lammps/build

#Compile and build lammps
cmake ../cmake/ -D PKG_OPENMP=yes -D PKG_COLLOID=yes -D PKG_MOLECULE=yes -D PKG_UEF=yes -D PKG_UEFEX=yes -D PKG_MISC=yes -D PKG_RIGID=yes -D PKG_TERSOFF=yes -D PKG_NETCDF=yes
cmake --build . -j8