# export WORKSPACE=<YOUR DIRECTORY>
export WORKSPACE=/c/projects/bash-workspace/sample-workspace
export BWS_HOME=/c/projects/bash-workspace

in_repo(){
	if [[ `pwd` = "$WORKSPACE/$1"* ]];
		then return 0;
	fi
	return 1;
}

test_workspace_path(){
	local CURR_DIR=`pwd`
	cd $WORKSPACE
	if [ `pwd` != $WORKSPACE ];
		then echo "ERROR: WORKSPACE value $WORKSPACE should match pwd $here" ;
	fi
	if [ ! -f $WORKSPACE/.workspace  ];
		then echo "WARNING: It is recommended to create a .workspace file for your workspace for non default behavior";
	fi
	cd $CURR_DIR
}

test_workspace_path

alias all=$BWS_HOME/.bin/all.sh
. $BWS_HOME/.bin/git-if.sh
. $BWS_HOME/.bin/git-if-not.sh

alias git-checkout=$BWS_HOME/.bin/git-checkout.sh
. $BWS_HOME/.bin/git-commit.sh
#alias git-commit=$BWS_HOME/.bin/git-commit.sh