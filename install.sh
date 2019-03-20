#!/bin/bash -u
##########################################
##	Dotfiles : Because they're awesome  ##
##########################################


####################
# Global Variables #
####################

#-- Environment Variables
HOME_DIR=$HOME
BACKUP_DIR="$HOME/.backupdotfiles/"
WHEREAMI="$( cd "$(dirname "$0")" ; pwd -P )"

#-- Color Variables
red=$'\e[1;31m'
grn=$'\e[1;32m'
yel=$'\e[1;33m'
blu=$'\e[1;34m'
mag=$'\e[1;35m'
cyn=$'\e[1;36m'
end=$'\e[0m'
#===============================================================================#

#############
# Functions #
#############

#-- usage
# print usage on stdout.
usage() {
	cat << EOF
Usage: $0 { command }
Install dotfiles.
Command available are
  - --help|-h : Print this usage.
  - all : Install all dotfiles.
  - git : Install git dotfiles.
  - ssh : Install ssh dotfiles.
  - zsh : Install zsh dotfiles.
  - tmux : Install tmux dotfiles.
  - tmuxifier : Install tmux-layouts dotfiles.
EOF
}

#-- checkDotFile
# Check if dotfile exist.
# If it's a symbolic link to a file that's good.
# If it's a file we need to perform treatment.
# if it's an other type it's a error.
checkDotFile (){
	DOTFILE_TO_CHECK=$HOME_DIR"/"$1
	if [[ -L $DOTFILE_TO_CHECK && -f $DOTFILE_TO_CHECK ]]; then
		echo -e $1 "is a symlink to a file"
		return 0
	elif [[ -L $DOTFILE_TO_CHECK && -d $DOTFILE_TO_CHECK ]]; then
		echo -e $1 "is a symlink to a directory"
		return 0
	elif [ -f $DOTFILE_TO_CHECK ]; then
		echo -e $1 "is a file"
		return 100
	else
		echo -e $1 "is not present"
		return 1
	fi
}

#-- backUpDotFile
# Save dotfiles if needed.
# The save is performed by a copy into a backup directory.
backUpDotfile(){
	DOTFILE_TO_CHECK=$HOME_DIR"/"$1
	if [ ! -d $BACKUP_DIR ]; then
		mkdir -p $BACKUP_DIR
	fi
	$(cp "$DOTFILE_TO_CHECK" $BACKUP_DIR);
	if [ $? -eq 0 ]; then
		echo -e $1 "dotfiles was backed up"
		return 0
	else
		return 1
	fi
}

#-- installDotFile
# Install the dotfile pass in param.
# Check dotfile before and perform a backup if needed.
installDotfile(){
	DOTFILE=$1
	ABSOLUTE_PATH_DOTFILE=$HOME_DIR"/"$1
	checkDotFile $DOTFILE
	RET_CHECKDOTFILE=$?
	if [ $RET_CHECKDOTFILE -eq 100 ]; then
		backUpDotfile $DOTFILE
		rm $ABSOLUTE_PATH_DOTFILE
		if [ $? -eq 0 ]; then
			ln -s $WHEREAMI"/"$DOTFILE $ABSOLUTE_PATH_DOTFILE
			if [ $? -eq 0 ]; then
				echo "  Dotfile correctly installed"
			else
				echo "  Fatal error durring install process"
				exit 1
			fi
		else
			echo "  Fatal error durring remove process"
			exit 1
		fi
	elif [ $RET_CHECKDOTFILE -eq 1 ]; then
		ln -s $WHEREAMI"/"$DOTFILE $ABSOLUTE_PATH_DOTFILE
		if [ $? -eq 0 ]; then
			echo "  Dotfile correctly installed"
		else
			echo "  Fatal error durring install process"
			exit 1
		fi
	else
		echo "  Nothing to do"
	fi
	# return 0
}
#===============================================================================#

########
# Main #
########
if [ $# -eq 0 ]; then
	echo "Error : You must pass at least one argument" 1>&2
	usage 1>&2
	exit 2
fi

while [ $# -gt 0 ]; do
	case "${1}" in
	--help|-h)
		usage
		exit 0
		;;
	all)
		installDotfile ".gitconfig"
		installDotfile ".zshrc"
		installDotfile ".zshenv"
		installDotfile ".tmux.conf"
		installDotfile ".tmux-layouts"
		;;
	git)
		installDotfile ".gitconfig"
		;;
	ssh)
		installDotfile ".ssh"
		;;
	zsh)
		installDotfile ".zshrc"
		installDotfile ".zshenv"
		;;
	tmux)
		installDotfile ".tmux.conf"
		;;
	tmuxifier)
		installDotfile ".tmux-layouts"
		;;
	*)
		echo "Unknown argument : $1" 1>&2
		usage 1>&2
		exit 2
	esac
	shift
done
