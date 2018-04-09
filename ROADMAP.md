ROADMAP
Name: bash workspace or git-workspace-extensions
create npm install
create maven install?

prereqs
	Define WORKSPACE env variable
	.bashrc aliases
	.bashrc functions

.workspace
	define repos, repo details, workspace
restructure
	.bin, sample-workspace, .bshrc
	(WORKSPACE vs WSSCRIPTS_HOME/.bin)
write all command
	use implicit subfolders definition
	all -use specific-working-set
		creates .workingset with WORKING_SET and repos and branch, overriding
	all -use-repos
		creates .workingset with repos
	all -i to run interactively, pausing after each repo
	unresolved dealing with spaces
Add all run similar to npm run
	aliases similar to npm run
write git-if command 
	Runs git status, pipes through grep for string, performs action if found
write git-if-not
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