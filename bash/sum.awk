#!/usr/bin/env awk

BEGIN {
        FS="";
}

{      
split($0, single_digit_array)

for(i=1; i<=length(single_digit_array); i++) 
        sum_digit_array[i] += single_digit_array[i]
}

END {
        for(i=1;i<=length(sum_digit_array);i++)
                printf "column %s is %s \n",  i,sum_digit_array[i]
}
