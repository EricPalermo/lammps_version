#!/bin/bash

#Initiate and update submodules
git submodule init
git submodule update RHEO
git submodule update LAMMPS
#copy external files into src folder
cp RHEO/*.cpp lammps/src
cp RHEO/*.h lammps/src
#update CMake files with references to external libraries
cp CMakeLists.txt lammps/cmake
#Create a build folder
mkdir lammps/build
cd lammps/build
#Compile and build lammps
ccmake ../cmake #manually select kspace, manybody, molecule, rigid, netcdf
cmake --build . -j8