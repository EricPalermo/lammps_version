Description: 

LAMMPS Version: stable_29Sep2021 (https://github.com/lammps/lammps/tree/c30ba70fab466105925d02e8ec810f5fc7f9448b)

External Packages:
- LAMMPS-UEFEX (https://github.com/t-murash/LAMMPS-UEFEX/tree/948bd9d8f850d1fec6d3477cfc055c52e5caa02d)

Custom Packages (generated "in-house"):
- tersoff_potential

Packages Used in LAMMPS Build:
(see build_lammps.sh for full build command)
- OPENMP
- COLLOID
- MOLECULE
- UEF
- UEFEX
- MISC
- RIGID
- NETCDF

Edits to CMake Files:
- UEFEX package added to all_off.cmake
- UEFEX package added to all_on.cmake
- UEFEX package added to CMakeLists.txt
- Link to netcdf library added to CMakeLists.txt


Requirements:
- You should have anaconda3 installed and the netcdf library should be installed within it

Instructions:
1. Locate your anaconda3/include directory and copy its full filepath; e.g. filepath/anaconda3/include
2. In the CMakeLists.txt file on line 244, copy the full filepath of the include directory into the find_library commandl; e.g. find_library(NETCDF_LIB netcdf filepath/anaconda3/include
3. Save and exit CMakeLists.txt
4. Run build_lammps.sh; e.g. bash build_lammps.sh