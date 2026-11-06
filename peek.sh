if [[ -z $2 ]]
then
 num_lines=3
else
 num_lines=$2
fi

input_file=$1
input_lines=$(cat $input_file | wc -l)
if [[ input_lines -le $((2*num_lines)) ]] 
then
 cat $input_file
else
 echo WARNING!!
 head -n $num_lines $1
 echo "..."
 tail -n $num_lines $1 
fi
