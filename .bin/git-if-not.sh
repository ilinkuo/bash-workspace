if git status | grep -q $1; then
	git status
else
	shift
	eval "$@"
fi