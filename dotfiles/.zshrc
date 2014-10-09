# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="gnzh"
#ZSH_THEME="tim"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git python vi-mode archlinux compleat python npm rvm mercurial zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export HISTSIZE=20000000
export SAVEHIST=20000000

# some key bindings

#autoload zkbd
#[[ ! -f ${ZDOTDIR:-$HOME}/.zkbd/$TERM ]] && zkbd
#source ${ZDOTDIR:-$HOME}/.zkbd/$TERM
#[[ -n ${key[Backspace]} ]] && bindkey "${key[Backspace]}" backward-delete-char
#[[ -n ${key[Insert]} ]] && bindkey "${key[Insert]}" overwrite-mode
#[[ -n ${key[Home]} ]] && bindkey "${key[Home]}" beginning-of-line
#[[ -n ${key[PageUp]} ]] && bindkey "${key[PageUp]}" up-line-or-history
#[[ -n ${key[Delete]} ]] && bindkey "${key[Delete]}" delete-char
#[[ -n ${key[End]} ]] && bindkey "${key[End]}" end-of-line
#[[ -n ${key[PageDown]} ]] && bindkey "${key[PageDown]}" down-line-or-history
#[[ -n ${key[Up]} ]] && bindkey "${key[Up]}" up-line-or-search 
#[[ -n ${key[Left]} ]] && bindkey "${key[Left]}" backward-char
#[[ -n ${key[Down]} ]] && bindkey "${key[Down]}" down-line-or-search
#[[ -n ${key[Right]} ]] && bindkey "${key[Right]}" forward-char

# for gnome-terminal
#bindkey "^[OH" beginning-of-line
#bindkey "^[OF" end-of-line

# complete in the middle of a word
#bindkey "^X^I" expand-or-complete-prefix

# key bindings
bindkey "\e[1~" beginning-of-line
bindkey "\e[4~" end-of-line
bindkey "\e[5~" beginning-of-history
bindkey "\e[6~" end-of-history
bindkey "\e[3~" delete-char
bindkey "\e[2~" quoted-insert
bindkey "\e[5C" forward-word
bindkey "\eOc" emacs-forward-word
bindkey "\e[5D" backward-word
bindkey "\eOd" emacs-backward-word
bindkey "\ee[C" forward-word
bindkey "\ee[D" backward-word
bindkey "^H" backward-delete-word
# for rxvt
bindkey "\e[8~" end-of-line
bindkey "\e[7~" beginning-of-line
# for non RH/Debian xterm, can't hurt for RH/DEbian xterm
bindkey "\eOH" beginning-of-line
bindkey "\eOF" end-of-line
# for freebsd console
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix


export MAKEFLAGS='-j 4'

# completion for pinyin
#function _pinyin() { return $(chsdir 0 $*) }
# function _pinyin() { reply=($($HOME/bin/chsdir 0 $*)) }
#zstyle ':completion:*' completer _pinyin _complete

setopt no_beep
# unsetopt menu_complete

# fcitx settings
export XIM=fcitx
export XIM_PROGRAM=fcitx
export XMODIFIERS="@im=fcitx"
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim

export MAKEFLAGS='-j 4'


# export WORDCHARS='*?_-[]~=&;!#$%^(){}<>'

export NODE_PATH=$HOME/node_modules

[ -d $HOME/.zsh ] && for i in $HOME/.zsh/*.zsh; do source $i; done

#source /home/tim/script/shell/adaptee-pinyin-completion/shell/pinyin-comp.zsh

export EDITOR=vim
export BROWSER=chromium
export PATH

alias mr='make run'
alias m='make'
alias mg='make gdb'
alias ll='ls -alhF'
#alias rm='rm -i'
#unalias rm
alias tmux='tmux -2'
alias astyleall="astyle --add-brackets --align-reference=type --align-pointer=type --break-blocks --delete-empty-lines --unpad-paren --pad-header --pad-oper -Y --indent=spaces=4 -xn -xc -xk -A2 --add-one-line-brackets --indent-switches -r '*.h' '*.cpp' '*.c'"
source /etc/environment
# echo "~/.zshrc executed."


#export GOROOT
#GOROOT=$HOME/software/go
#export GOPATH
#GOPATH=$HOME/Src/gocode

export PATH
[ -d $HOME/bin ] && PATH=$HOME/bin:$PATH
export LC_ALL="en_US.UTF-8"
