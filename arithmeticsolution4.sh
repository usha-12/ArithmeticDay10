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
