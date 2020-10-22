#!/bin/bash

echo "#Rad      Energy" > radius.log
list="2.5 3.0 3.5 4.0 4.5 5.0"
export OCT_PARSE_ENV=1

export OCT_Spacing=$(echo 0.18*1.8897261328856432 | bc)

for Radius in $list; do
    export OCT_Radius=$(echo $Radius*1.8897251328856432 | bc)
    octopus >& out-$Radius
    energy=`grep Total static/info  | head -1 | cut -d "=" -f 2`
    echo $Radius $energy >> radius.log
    rm -rf restart
done

unset OCT_Radius
unset OCT_Spacing
