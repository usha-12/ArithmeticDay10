#Compute a % b + c
operation4=$(($((n1%$n2))+$n3))


echo "Computation 4 :     a % b + c = $operation4"
echo ""
#Store the results in a Dictionary for every Computation
result=([1]=$operation1 [2]=$operation2 [3]=$operation3 [4]=$operation4) 
echo "Displaying Dictionary : "
echo "Operation Key Value"
for key in "${!result[@]}"; do
    echo "Computation $((key+1))   ${result[$key]}"
done
echo ""
#Read the values from the Dictionary into the array
declare -a arrayResult
for key in "${!result[@]}"; do
	arrayResult[$key]=${result[$key]}
done
echo ""

echo "Array ${arrayResult[@]} "
echo ""



#Sort the results to show the Computation Result in the Descending Order
flag=1;
l=${#arrayResult[@]}
for (( i = 0; i < $l; i++ ))
do
    flag=0;
    for ((j = 0; j < $l-$i; j++ ))
    do
        if [[ ${arrayResult[$j]} -gt ${arrayResult[$j+1]} ]]
        then
            temp=${arrayResult[$j]};
            arrayResult[$j]=${arrayResult[$j+1]};
            arrayResult[$j+1]=$temp;
            flag=1;
        fi
    done

    if [[ $flag -eq 0 ]]; then
          break;
    fi
done

echo ""
echo "Results in descending order  : "
for (( k=$l; k > 0; k-- )); do
	echo " ${arrayResult[$k]}"
done
echo ""
echo ""
