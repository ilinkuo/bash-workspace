. $BWS_HOME/.bin/git-if-not.sh
# Read in workspace
. $WORKSPACE/.workspace
. $WORKSPACE/.workingset
#function git-checkout(){
#	git-if-not 'modified:|file:' git checkout $1
#}

. $BWS_HOME/.bin/process-options.sh

echo "git-if-not 'modified:|file:' git checkout $options $branch $@"