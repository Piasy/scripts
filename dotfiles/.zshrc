# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# //bira
# //bureau
ZSH_THEME="mikeh"
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
plugins=(git python vi-mode archlinux compleat python npm rvm mercurial zsh-syntax-highlighting git-flow-completion)

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

alias mr='make run'
alias m='make'
alias mg='make gdb'
alias ll='ls -alhF'
alias tmux='tmux -2'
alias astyleall="astyle --add-brackets --align-reference=type --align-pointer=type --break-blocks --delete-empty-lines --unpad-paren --pad-header --pad-oper -Y --indent=spaces=4 -xn -xc -xk -A2 --add-one-line-brackets --indent-switches -r '*.h' '*.cpp' '*.c'"
#source /etc/environment
# echo "~/.zshrc executed."

# set the number of open files to be 1024
ulimit -S -n 1024
export PATH="/usr/local/Cellar/curl/7.52.1/bin/:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/go/bin:/opt/X11/bin"
export LC_ALL="en_US.UTF-8"
export GOPATH=~/src/GOPATH
alias mongostart="mongod --dbpath ~/data/mongodb"
alias goprepare="export GOPATH=`pwd`:$GOPATH"
export USERPROFILE=$HOME

export NVM_DIR=~/.nvm
export JAVA_HOME=`/usr/libexec/java_home`
export ANDROID_HOME=/Users/piasy/tools/android-sdk
export ANDROID_SDK=$ANDROID_HOME
export ANDROID_NDK=$ANDROID_HOME/ndk-bundle
export ANDROID_JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export GRADLE_USER_HOME=/Users/piasy/.gradle/
export REPO_URL='https://mirrors.tuna.tsinghua.edu.cn/git/git-repo/'

export PATH="$PATH:$HOME/bin"
export PATH="$PATH:$HOME/src/scripts/bin"
export PATH="$PATH:$GOPATH/bin"
export PATH="$PATH:/usr/local/mysql/bin"
export PATH="$PATH:/usr/local/Cellar/node/5.4.1/bin"
export PATH="$PATH:$HOME/tools/apache-maven-3.3.9/bin"
export PATH="$PATH:$HOME/tools/android-sdk/ndk-bundle"
export PATH="$HOME/tools/depot_tools:$PATH"
export PATH="/Users/piasy/anaconda3/bin:$PATH"
export PATH="$ANDROID_SDK/tools:$ANDROID_SDK/platform-tools:$ANDROID_NDK:$PATH"
export PATH=".:$PATH"

alias ba="add && ./buckw install -r -x appDevDebug"
alias bba="rm -rf .okbuck .buckd buck-out && ./gradlew okbuck --offline --stacktrace && ba"

#alias for cnpm
alias cnpm="npm3 --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"
alias fidea="docker run --rm -p 1017:1017 -e USER='Piasy' dominate/idea-license-server"
alias fgfw="proxychains4 zsh"
alias blog='jekyll serve'
alias showHiddenFiles="defaults write com.apple.finder AppleShowAllFiles TRUE && killall Finder"
alias hiddenFiles="defaults write com.apple.finder AppleShowAllFiles FALSE && killall Finder"
alias indexOn="sudo mdutil -a -i on"
alias indexOff="sudo mdutil -a -i off"
alias add="adb devices"
export HOMEBREW_GITHUB_API_TOKEN="<TOKEN>"

alias pull_log="adb pull /sdcard/powerinfo/pslstreaming_log.txt ~/Downloads && atom ~/Downloads/pslstreaming_log.txt"

