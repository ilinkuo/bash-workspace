. $BWS_HOME/.bin/git-if-not.sh

#function git-checkout(){
#	git-if-not 'modified:|file:' git checkout $1
#}

options=
branch=
workingset=elliot
#Process options
while [[ $1 == -* ]]
do

	if [ $1 == "-develop" ]; then
		echo "${workingset:-develop}"
		echo "${info[$workingset,develop]}"
		echo "${info[$workingset,develop]:-develop}"

		echo "${$info[$workingset,develop]}:-develop}"
	elif [ $1 == "-story" ]; then
		echo story
	elif [ $1 == "-task" ]; then
		echo task
	else
		options="$options $1"
		shift
	fi
done


echo "git-if-not 'modified:|file:' git checkout $1"