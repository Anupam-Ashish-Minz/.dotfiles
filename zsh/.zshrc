setopt correct

#ZSH_CACHE_DIR=$HOME/.cache/oh-my-zsh
#if [[ ! -d $ZSH_CACHE_DIR ]]; then
#  mkdir $ZSH_CACHE_DIR
#fi

#source $ZSH/oh-my-zsh.sh
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
# [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY             # Share history between all sessions.

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/anupam/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/anupam/.zsh/vi-mode.plugin.zsh

# zsh-autosuggestions config
bindkey '^ ' autosuggest-accept
bindkey '^v' edit-command-line
#bindkey -M vicmd v edit-command-line

# alias vifm image preview
alias vvifm='/home/anupam/.config/vifm/scripts/vifmrun'

alias l="exa -laF --color=always --group-directories-first"
alias vi="nvim -S"

# source "/home/anupam/.zsh/completion.zsh"
# source "/home/anupam/.zsh/key-bindings.zsh"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

# something to display
#colorscript -r
# neofetch
# pfetch
#figlet 'mark52s' 
#figlet 'start' 
export EDITOR=nvim

export FFF_CD_ON_EXIT=1
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")"
}

source /home/anupam/.config/fff/fffrc.sh

LFCD="/home/anupam/.config/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi
#alias lf=lfcd

start_bookmarks() { 
    selected=$(fzf < /home/anupam/scripts/bookmarkslist) 
    dirname=`basename $selected`
    tmux switch-client -t $dirname
    #if [[ $? -eq 0 ]]; then
    #    exit 0
    #fi
    tmux new-session -c $selected -d -s $dirname && 
    tmux switch-client -t $dirname || tmux new -c $selected -A -s $dirname
}

bookmarks() { 
    selected=$(fzf < /home/anupam/scripts/bookmarkslist) 
    cd $selected
}

findproj() { cd `find ~/work -maxdepth 3 -mindepth 1 -type d | fzf` }

editconf() { 
    nvim `fzf < /home/anupam/scripts/conflist` -c 'cd %:p:h'
}

songsearch() { 
    find /media/anupam/881f3c4e-63e4-4d5d-a149-e736788e2134/Songs -mindepth 1 -type f | fzf 
}

recentbook() { 
    bookname='/home/anupam/Documents/Books/computer/programing language tutorials/c c++/Advanced C and C++ Compiling - 2014.pdf' 
    zathura "$bookname" &
    disown 
    exit 0
}

bvim () {
    lynx $1 --dump | nvim "+%s/\[\d*\]/g"
}

export PATH="$PATH:/home/anupam/.emacs.d/bin"

export MANWIDTH=79
export MANPAGER="nvim -c 'set ft=man nu rnu nowrap hlsearch colorcolumn=80'"

alias b=bookmarks
alias s=start_bookmarks
alias c="pwd | xclip -sel clip"
alias ec="editconf"
#alias tn="tmux new -s"
#alias tl="tmux list-sessions"
#alias ta="tmux attach -t"
#alias tk="tmux kill-session -t"
alias yy="youtube-dl -f 136+bestaudio"
alias yym="youtube-dl -f 134+bestaudio"
alias randomwallapaper="/home/anupam/work/build/styli.sh/styli.sh"
alias dlfile="/home/anupam/scripts/dlfile"