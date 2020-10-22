#!/bin/bash 

echo "#Sp   Energy      s_eigen     p_eigen" > spacing.log
list="0.22 0.20 0.18 0.16 0.14 0.12 0.10"
# list="0.26 0.24"
export OCT_PARSE_ENV=1

for Spacing in $list; do
    export OCT_Spacing=$(echo $Spacing*1.8897261328856432 | bc)
    octopus >& out-$Spacing
    energy=`grep Total static/info  | head -1 | cut -d "=" -f 2`
    # seigen=`grep "1   --" static/info | head -1 | awk '{print $3}'`
    # peigen=`grep "2   --" static/info | head -1 | awk '{print $3}'`
    # echo $Spacing $energy $seigen $peigen >> spacing.log
    echo $Spacing $energy >> spacing.log
    rm -rf restart
done

unset OCT_Spacing
