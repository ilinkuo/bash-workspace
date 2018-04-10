# Save the curent directory
current_dir=`pwd`

# reset state vars
command=
branch=

# Preprocess arguments with quotes

# http://www.linuxjournal.com/content/bash-preserving-whitespace-using-set-and-eval

#items=
#for i in "$@"
#do
#    items="$items \"$i\""
#done

#eval set -- $items

# Read in workspace
. $WORKSPACE/.workspace

#Process option placeholders, not yet implemented
if [ $1 == "-i" ]; then 
	echo "  ... running in interactive mode"
	shift;
elif [ $1 == "-use" ]; then 
	echo "  ... use working set $2"
	echo "repos=( ${workingsets[$2,repos]} )" > "$WORKSPACE/.workingset"
	echo "branch=${workingsets[$2,branch]}" >> "$WORKSPACE/.workingset"
	exit; 
elif [ $1 == "-use-repos" ];	then 
	shift
	echo "repos=( $@ )" > "$WORKSPACE/.workingset"
	echo "repos=( $@ )"
	exit; 
elif [ $1 == "run" ]; then
	echo "  ... running"
	shift		
	command=$1
	shift;
fi

# Read in working set
if [ -f $WORKSPACE/.workingset ]; then
	. $WORKSPACE/.workingset;
fi

echo working repos: ${repos[@]}

# Loop over repos and execute command
for repo in "${repos[@]}"
do
   echo "------ $repo: ${WORKSPACE}/$repo/${info[$repo,home]} ------"
   cd "${WORKSPACE}/$repo/${info[$repo,home]}"
   if [[ -z "$command" ]]; then
      eval "$@"
   else
   	  eval "${all_run[$command]}" "$@"
   fi   
done

#Restore the original directory
cd $current_dir