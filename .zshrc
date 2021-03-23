source /usr/share/zsh/plugins/zsh-autosuggestions-git/zsh-autosuggestions.zsh

ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git virtualenv zsh-autosuggestions) 
PROMPT_GEOMETRY_COLORIZE_ROOT=true
PROMPT_GEOMETRY_EXEC_TIME=true

ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

#               ZSH CONFIGS                       #
####################################################

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=100000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep
bindkey -v

#Incremental search 
bindkey "^R" history-incremental-search-backward

# History tweaks
setopt extended_history         # Also record time and duration of commands.
setopt share_history            # Share history between multiple shells
setopt hist_expire_dups_first   # Clear duplics when trimming internal hist.
setopt hist_find_no_dups        # Dont display duplicates during searches.
setopt hist_ignore_dups         # Ignore consecutive duplicates
setopt hist_ignore_all_dups     # Remember only one copy of the command.
setopt hist_reduce_blanks       # Remove superfluous blanks.
setopt NO_HUP
setopt NO_CHECK_JOBS

# Completion tweaks
zstyle :compinstall filename '/home/junaikin/.zshrc'
zstyle ':completion:*' menu select
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache_path ~/.zsh/cache
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric

# Rehash to find executables
zstyle ':completion:*' rehash true

autoload -Uz compinit
compinit

#Syntax highlighting 
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


#       Aliases
# ===================

alias sml='rlwrap sml'
alias ls='ls --color=auto'
alias play='Code/album.py'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias l.='ls -d .* --color=auto'
alias ll='ls -lhA'
alias rm='rm -v'
alias mount='mount | column -t'
alias h='history'
alias svi='sudo vi'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias update='sudo pacman -Syu'
alias df='df -H'
alias du='du -ch'
alias vim='nvim'
alias reboot='sudo reboot'
alias shutdown='sudo shutdown now'
alias shark='ssh lslopez@shark.ics.cs.cmu.edu'
alias highaf='sudo brightnessctl set 10%'
alias mid='sudo brightnessctl set 50%'
alias max='sudo brightnessctl set 100%'
alias ssid='sudo iw dev wlp3s0 scan | grep SSID | less'
alias wifi='sudo systemctl restart wpa_supplicant@wlp3s0; 
            sudo systemctl restart dhcpcd@wlp3s0'
alias ptags="python ~/Code/ptags.py"
alias fzf="fzf -m"
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias rb='python /home/junaikin/HDD/Books/random_book.py'
alias calendar='vim -c ":Calendar -view=week"'
alias rrepl='~/.cargo/bin/papyrus'
alias top='glances'

# Custom functions 

DIRSTACKFILE="$HOME/.cache/zsh/dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && cd $dirstack[1]
fi
chpwd() {
  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}

DIRSTACKSIZE=20

# Remember last visited directories 
setopt AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME
## Remove duplicate entries
setopt PUSHD_IGNORE_DUPS
## This reverts the +/- operators.
setopt PUSHD_MINUS

source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh

# Easier history searching using fzf
fh() {
  print -z $( ([ -n "$ZSH_NAME" ] && fc -l 1 || history) | fzf +s --tac | sed -r 's/ *[0-9]*\*? *//' | sed -r 's/\\/\\\\/g')
}

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#Use vim as MANPAGER
export MANPAGER="nvim -c 'set ft=man' -"

#wal settings
#=============================
# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
(cat ~/.cache/wal/sequences &)

# Key mappings for auto-suggestions
#=================================
bindkey '^ ' autosuggest-accept
bindkey '^e' autosuggest-execute
bindkey '^k' autosuggest-clear
bindkey '^t' autosuggest-toggle

# ADD TO EXECUTION PATH
#=================================
export PATH=$PATH:/home/junaikin/.cargo/bin:/home/junaikin/.local/bin

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

