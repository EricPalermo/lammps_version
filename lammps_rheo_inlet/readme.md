Description: 

LAMMPS Version: stable_28Sep2020 (https://github.com/lammps/lammps/commit/584943fc928351bc29f41a132aee3586e0a2286a)

External Packages:
- RHEO (https://github.com/ThomasCOConnor/RHEO/commit/60450501ab07965dec3530c40fc2304dc223837d)

Custom Packages (generated "in-house"):
- None

Packages Used in LAMMPS Build:
(see build_lammps.sh for full build command)
- KSPACE
- MANYBODY
- MOLECULE
- RIGID
- NETCDF

Edits to CMake Files:
- Link to netcdf library added to CMakeLists.txt
- Link to gsl library added to CMakeLists.txt



Requirements:
- You should have anaconda3 installed and the netcdf library should be installed within it
- You should have GSL installed (see the following link for installation instructions)

Instructions:
1. Locate your anaconda3/include directory and copy its full filepath; e.g. filepath/anaconda3/include
2. In the CMakeLists.txt file on line 244, copy the full filepath of the include directory into the find_library commandl; e.g. find_library(NETCDF_LIB netcdf filepath/anaconda3/include
3. Save and exit CMakeLists.txt
4. Run build_lammps.sh; e.g. bash build_lammps.sh 
5. The script may fail while compiling lammps with an error about make files in the src folder. The error will prompt you to run a terminal command to purge these files. If this occurs, run the command prompted by the error message, then manually rerun the last two commands of the build_lammps.sh script:
    - cmake ../cmake/ -D PKG_OPENMP=yes -D PKG_COLLOID=yes -D PKG_MOLECULE=yes -D PKG_UEF=yes -D PKG_UEFEX=yes -D PKG_MISC=yes -D PKG_RIGID=yes -D PKG_NETCDF=yes
    - cmake --build . -j8