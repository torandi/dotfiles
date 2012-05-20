source ~/dotfiles/zshrc_lib

#
#  VARIABLES
#
HISTFILE=~/.zsh_history
SAVEHIST=1000
HISTSIZE=1000

#
# EXPORTS
#
export EDITOR=vim
#export LANG="en_US"
#export LC_CTYPE="sv_SE"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/lib

#
#  OPTIONS
#
setopt AUTO_CONTINUE
setopt AUTO_PUSHD
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY
setopt NO_AUTO_MENU
setopt NO_AUTO_REMOVE_SLASH
setopt NO_CHECK_JOBS
setopt NO_CLOBBER
setopt NO_HUP
setopt PUSHD_SILENT
setopt autocd
setopt extendedglob
setopt PROMPT_SUBST

#
#  ALIAS
#
alias ls=ls\ --color=auto\ -h\ -F
alias ll=ls\ -l
alias mv=mv\ -v
alias playlist=mplayer\ -playlist
alias irc='ssh o -t "screen -rd"'
alias cgrep='grep --color -n'

# SCRIPTS
#

mkcd() { mkdir -p $1 && cd $1; }

#
#  ZSH MODULES
#
autoload -U colors
colors

#
#  KEYBINDINGS
#
bindkey -e # Set initial keymap to emacs emulation.

bindkey '^[[1~' beginning-of-line			# HOME
bindkey '^[[2~' overwrite-mode				# INSERT
bindkey '^[[3~' delete-char				# DELETE
bindkey '^[[4~' end-of-line 				# END
bindkey '^[[5~' history-beginning-search-backward	# PAGE UP
bindkey '^[[6~' history-beginning-search-forward	# PAGE DOWN
bindkey '^[[H'	beginning-of-line			# HOME
bindkey '^[[F'	end-of-line				# END

#
#  MISC
#



# Functions

export NC="%{$terminfo[sgr0]%}"

for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE BLACK; do
	eval $color='%{$NC%}%{$fg_bold[${(L)color}]%}'
	eval ${(L)color}='%{$NC%}%{$fg[${(L)color}]%}'
	(( count = $count + 1 ))
done

# Alias color
GREY=$BLACK


_hostname_color() {
  case $(uname -n) in
    (carbon)
      echo -n $GREY
      ;;
    (jenny)
      echo -n $MAGENTA
      ;;
    (dopefish)
      echo -n $CYAN
      ;;
    (xenon)
      echo -n $GREEN
      ;;
    (sulfur)
      echo -n $YELLOW
		;;
    (plutonium)
      echo -n $YELLOW
		;;
	(geonosis)
	  echo -n $BLUE
	  ;;
    (ostkaka)
      echo -n $YELLOW
		;;
	 (*)
	   echo -n $WHITE
		;;
    esac
}
_username_color() {
	case $(whoami) in
		(root)
			echo -n $RED
			;;
		(*)
			echo -n $white
			;;
	esac
}

_git_branch_color() {
	case "$(__git_ps1 '%s')" in
		production)
			echo -n $red
			;;
		release)
			echo -n $red
			;;
		*)
			echo -n $GREY
			;;
	esac
}	



#
#  PROMPT
#

hostname=`hostname`
export PROMPT="$(_username_color)%n$(_hostname_color) @$hostname $WHITE>$white>$BLACK> %{$reset_color%}"
export RPROMPT='$NC4%~$(_git_branch_color)$(__git_ps1 "(%s)") %0(?:${GREEN}:%B${RED})[%?]%b%{$reset_color%}'

autoload -U compinit
compinit

if [[ -f ~/.zshrc.local ]]; then
	source ~/.zshrc.local
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
