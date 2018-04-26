function git-checkout(){
	. $BWS_HOME/.bin/git-if-not.sh
	# Read in workspace
	. $WORKSPACE/.workspace
	. $WORKSPACE/.workingset
	. $BWS_HOME/.bin/process-options.sh

	echo "git-if-not 'modified:|file:' git checkout $options $branch $@"
	git-if-not 'modified:|file:' git checkout $options $branch $@
}
