
. $BWS_HOME/.bin/repo-utils.sh

options=
branch=
#Process options
while [[ $1 == -* ]]
do
	if [ $1 == "-story" ]; then
		branch="${workingsets[$workingset,story]}"
	elif [ $1 == "-task" ]; then
		branch="${workingsets[$workingset,task]}"
	elif [ $1 == "-develop" ]; then
		branch=`read-repo`
		branch="${info[$branch,develop]}"
		branch=${branch:-develop}
	else
		options="$options $1"
	fi
	shift
done