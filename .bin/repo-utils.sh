in-repo(){
	if [[ `pwd` = "$WORKSPACE/$1"* ]];
		then return 0;
	fi
	return 1
}

read-repo(){
	local cur_repo;
	for cur_repo in "${repos[@]}"
	do
		if in-repo $cur_repo ; then
			echo $cur_repo
		fi
	done
}