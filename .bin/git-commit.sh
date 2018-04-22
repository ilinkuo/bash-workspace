
function git-commit(){
	local options=
	while [[ $1 == -* ]]
	do
		options="$options $1"
		shift
	done
	echo git commit ${options} "\"$@\""
	# git commit ${options} "\"$@\""
}
