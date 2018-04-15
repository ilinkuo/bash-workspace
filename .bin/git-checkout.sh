. $BWS_HOME/.bin/git-if-not.sh

function git-checkout(){
	git-if-not 'modified:|file:' git checkout $1
}