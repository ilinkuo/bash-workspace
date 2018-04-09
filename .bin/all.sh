. $WORKSPACE/.workspace

echo working repos: ${repos[@]}

# Save the curent directory
CURR_DIR=`pwd`

# Preprocess arguments with quotes

# http://www.linuxjournal.com/content/bash-preserving-whitespace-using-set-and-eval

#items=
#for i in "$@"
#do
#    items="$items \"$i\""
#done

#eval set -- $items

#Process options
option=$1

if [ "$option" == "-i" ];
	then echo "  ... running in interactive mode"
	shift;
elif [ "$option" == "-use" ];
	then echo "  ... use working set"
	shift;	
fi

# Loop over repos and execute command
for repo in "${repos[@]}"
do
   echo "------ $repo: ${WORKSPACE}/$repo/${info[$repo,home]} ------"
   cd "${WORKSPACE}/$repo/${info[$repo,home]}"
   eval "$@"
done

#Restore the original directory
cd $CURR_DIR