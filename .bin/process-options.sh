options=
branch=
#Process options
while [[ $1 == -* ]]
do
	if [ $1 == "--story" ]; then
		branch="${workingsets[$workingset,story]}"
	elif [ $1 == "--task" ]; then
		branch="${workingsets[$workingset,task]}"
	elif [ $1 == "--develop" ]; then
		branch="${info[$workingset,develop]}"
		echo using ${branch:=develop}
	else
		options="$options $1"
	fi
	shift
done