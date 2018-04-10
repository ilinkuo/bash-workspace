git status

if ! git status | grep $1; then
	shift
	eval "$@"
fi