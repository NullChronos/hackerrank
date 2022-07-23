read num
printf "%.3f" $(echo "("$(cat)")/$num" | tr ' ', '+' | bc -l)
