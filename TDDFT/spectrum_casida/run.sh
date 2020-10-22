#!/bin/bash


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

cp inp.unocc inp
octopus > out.unocc 2>&1

cp inp.casida inp
octopus > out.casida 2>&1

