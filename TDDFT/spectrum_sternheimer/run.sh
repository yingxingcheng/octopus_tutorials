#!/bin/bash


# cp inp.dft inp
# octopus > dft.out 2>&1

# if [ -d restart ]; then
#     rm -rf restart
# fi
# 
# if [ -d ../scf/restart ]; then
#     cp -r ../scf/restart .
# else
#     echo "Please do a SCF calculation first!"
#     exit
#     # cp inp.dft inp
#     # octopus > dft.out 2>&1
# fi

octopus > out 2>&1
# cp inp.sternheimer inp
# octopus > tddft_sternheimer.out 2>&1

# rm inp
