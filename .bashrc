## FIND AND REMOVED EMPTY DIRECTORIES {{{
ded() {
	read -p "Delete all empty folders recursively [y/N]: " OPT
	[[ $OPT == y ]] && find . -type d -empty -exec rm -fr {} \; &> /dev/null
}


