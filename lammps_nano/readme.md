This repository stores the various versions of LAMMPS used in the O'Connor group at CMU. Each version is specific to the packages used in that build of LAMMPS as well as the device it is built on (e.g. office desktop vs HPC cluster).

Each directory in this repository represtents a different build of LAMMPS. Within each directory, there are:
- git submodules that link to specific commits of external repositories. These submodules may link to a specific stable version of LAMMPS on the official LAMMPS github or to LAMMPS packages maintained by other groups.
- custom LAMMPS files that are modified "in-house" and thus do not have an external repository that they are stored on
- a shell script that will run all necessary terminal commands to build LAMMPS given the above two items
- a readme file describing the specifics of the LAMMPS build

Some additional notes:
- currently, the shell script takes a long time to run because it initializes the submodules in ALL directories (meaning it clones large external repositories like LAMMPS several times). I'll look into a way to update only the submodules needed
- I might also try to replace the shell script with a make file so it can be run more flexibly
- As of 5/4/22, only the lammps_nano_tersoff has been tested and verified to work on solo