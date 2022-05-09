Description: LAMMPS build to debug surface behavior in RHEO. Intended to run on WSL on desktop
Date: 5/9/2022

LAMMPS Version: stable_29Oct2021 (https://github.com/lammps/lammps/tree/stable_29Oct2020)

External Packages:
- RHEO (https://github.com/ThomasCOConnor/RHEO/commit/06b00b65e41b4513cc4ce38cd305ad65a1f8e850)

Packages Used in LAMMPS Build:
(see build_lammps.sh for full build command)
- KSPACE
- MOLECULE
- MANYBODY
- RIGID
- NETCDF

Edits to CMake Files:
- Link to netcdf library added to CMakeLists.txt
- Link to gsl library added to CMakeLists.txt



Requirements:
- You should have gsl and netcdf installed and located in the /usr/include directory

Instructions:
4. Run build_lammps.sh; e.g. bash build_lammps.sh