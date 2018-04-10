ROADMAP
Name: bash workspace or git-workspace-extensions
create npm install
create maven install?


write all command
	unresolved dealing with spaces
write git-checkout command with -commit -stash option default abort
	git-if unsaved exit
	run git checkout with all options
	if no -b, then does git pull
write git-checkout-branch = main feature branch -feature -branch
write git-checkout-develop
	Add repo check before running git-checkout to change params
write git-merge with -commit -stash options
	NO git-if unsaved with abort (DONE by git-checkout)
	NO git-pull (SHOULDN'T)
	git-checkout branch
	git merge
git-merge-branch
Write installation script
create npm module to install

install git-workspace
		choose workspace location
		no need to choose script location
		projects
				static list in file
				aggregator pom
		allow multiple workspaces
workspace install creates something to add to your .bashrc
workspace set 1,2,3,4


command aliases are hyphenated = they do what the unhyphenated do, just smartly

git-checkout can smartly deal with develop/master
		* -s options and -commit options
git-merge does a save current branch, git-checkout branch, git pull, git-checkout previous branch, git merge
		* what if current branch is master? 