
function git-commit(){
	local git_commit_options=
	while [[ $1 == -* ]]
	do
		git_commit_options="$git_commit_options $1"
		shift
	done
	echo git commit ${git_commit_options} "\"$@\""
	git commit ${git_commit_options} "\"$@\""
}
