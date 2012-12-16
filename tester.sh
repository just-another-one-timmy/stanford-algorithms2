#!/bin/sh

for fn in $3/*.test; do
    echo "Checking $fn"
    r1=$(python $1 < $fn);
    r2=$(python $2 < $fn);
    if [ $r1 != $r2 ];
        then echo "$fn: $r1 differs from $r2";
        else echo "$fn: result is $r1";
    fi
done
