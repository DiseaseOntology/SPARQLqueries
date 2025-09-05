start=$(date +%s)
robot query -i $1 --query $2 DEL.tsv
end=$(date +%s)
difference=$((end - start))
echo "Duration: $difference seconds"