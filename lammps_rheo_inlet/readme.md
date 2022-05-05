Description: 

LAMMPS Version: stable_28Oct2020 (https://github.com/lammps/lammps/commit/584943fc928351bc29f41a132aee3586e0a2286a)

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
- You should have GSL installed (see the following link for installation instructions: https://coral.ise.lehigh.edu/jild13/2016/07/11/hello/)

Instructions:
1. Locate your anaconda3/include directory and copy its full filepath; e.g. filepath/anaconda3/include
2. In the CMakeLists.txt file on line 127, copy the full filepath of the include directory into the find_library commandl; e.g. find_library(NETCDF_LIB netcdf filepath/anaconda3/include
3. If installed correctly according to the link provided, gsl should be located in the /usr/include directory. If this is the case, there's no need to edit the gsl library link in the CMakeLists.txt file. If gsl is located somehwere other than /usr/include, then line 124 of CMakeLists.txt should be updated.
3. Save and exit CMakeLists.txt
4. Run build_lammps.sh; e.g. bash build_lammps.sh