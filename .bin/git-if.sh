if git status | grep -q $1; then
	shift
	eval "$@"
else
	git status
fi