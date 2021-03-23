#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias play='Code/album.py'

export NDK_ROOT=~/Android/Sdk/ndk-bundle

PS1='[\u@\h \W]\$ '

source ~/.shell_prompt

export HISTSIZE=10000
export HISTFILESIZE=200000



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/junaikin/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/junaikin/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/junaikin/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/junaikin/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# # <<< conda initialize <<<

source "$HOME/.cargo/env"
