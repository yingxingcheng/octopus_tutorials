#!/bin/bash


# cp inp.dft inp
# octopus > dft.out 2>&1

if [ -d restart ]; then
    rm -rf restart
fi

if [ -d ../scf/restart ]; then
    cp -r ../scf/restart .
else
    echo "Please do a SCF calculation first!"
    exit
    # cp inp.dft inp
    # octopus > dft.out 2>&1
fi

# cp inp_x inp
# octopus > x.out 2>&1
# cd  td.general
# mv multipoles multipoles.1
# cd ../

# cp inp_y inp
# octopus > y.out 2>&1
# cd  td.general
# mv multipoles multipoles.2
# cd ../

cp inp_z inp
octopus > z.out 2>&1
cd td.general
mv multipoles multipoles.3
cd ../
