function git-if(){
	if git status | grep -q -E $1; then
		shift
		eval "$@"
	else
		git status
	fi
}
