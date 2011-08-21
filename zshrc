#source /etc/zsh/zprofile

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
export PATH=/home/torandi/.cabal/bin:$PATH:/home/torandi/dev/tools/android-sdk-linux_x86/tools:/home/torandi/dev/tools/android-ndk-r6:/home/torandi/dev/tools/android-sdk-linux_x86/platform-tools
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

#
#  ALIAS
#
alias ls=ls\ --color=auto\ -h\ -F
alias ll=ls\ -l
alias mv=mv\ -v
alias playlist=mplayer\ -playlist

#
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

#
#  PROMPT
#

export NC="%{$terminfo[sgr0]%}"

for color in RED GREEN YELLOW BLUE MAGENTA CYAN WHITE BLACK; do
	eval $color='%{$NC%}%{$fg_bold[${(L)color}]%}'
	eval ${(L)color}='%{$NC%}%{$fg[${(L)color}]%}'
	(( count = $count + 1 ))
done


_hostname_color() {
  case $(uname -n) in
    (carbon)
      echo -n $BLACK
      ;;
    (jenny)
      echo -n $MAGENTA
      ;;
    (oxygen)
      echo -n $BLUE
      ;;
    (xenon)
      echo -n $GREEN
      ;;
    (haagen-dazs)
      echo -n $red
      ;;
    (sulfur)
      echo -n $YELLOW
		;;
	 (*)
	   echo -n $RED
		;;
    esac
}
hostname=`hostname`
export PROMPT="$white%n$(_hostname_color) @$hostname $white>$BLACK>$black> %{$reset_color%}"
export RPROMPT="$NC%~ [$?]"

autoload -U compinit
compinit

[[ -s "/home/torandi/.rvm/scripts/rvm" ]] && source "/home/torandi/.rvm/scripts/rvm"  # This loads RVM into a shell session.
