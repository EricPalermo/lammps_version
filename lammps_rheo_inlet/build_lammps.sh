#!/bin/bash

#Load modules
module load cmake/3.20.3 intel/18.0.0.128 openmpi-intel/4.1 mkl/18.0.0.128

#Initiate and update submodules
git submodule init
git submodule update RHEO
git submodule update lammps
#copy external files into src folder
cp RHEO/*.cpp lammps/src
cp RHEO/*.h lammps/src

#update CMake files with links to external libraries
cp CMakeLists.txt lammps/cmake

#Create a build folder
mkdir lammps/build
cd lammps/build

#Compile and build lammps
ccmake ../cmake #manually select kspace, manybody, molecule, rigid, netcdf
cmake --build . -j8