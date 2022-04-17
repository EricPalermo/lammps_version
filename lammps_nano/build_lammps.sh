#!/bin/bash

#Initiate and update submodules
git submodule init
git submodule update
#copy external files into src folder
cp LAMMPS-UEFEX/UEFEX/*.cpp lammps/src
cp LAMMPS-UEFEX/UEFEX/*.h lammps/src
#update CMakeLists.txt with links to external libs
cp CMakeLists.txt lammps/cmake
#Create a build folder
mkdir lammps/build
cd lammps/build
#Compile and build lammps
cmake ../cmake/ -D PKG_OPENMP=yes -D PKG_COLLOID=yes -D PKG_MOLECULE=yes -D PKG_UEF=yes -D PKG_MISC=yes -D PKG_RIGID=yes -D PKG_NETCDF=yes
cmake --build .