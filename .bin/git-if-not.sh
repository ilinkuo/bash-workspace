function git-if-not(){
	if git status | grep -q -E $1; then
		git status
	else
		shift
		eval "$@"
	fi	
}
