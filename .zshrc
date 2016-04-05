# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z cp github git-extras python brew osx zsh-syntax-highlighting extract common-aliases sudo brew node npm web-search)
# Add env.sh
#. ~/Projects/config/env.sh

# User configuration
# This probably should happen in your ~/.{ba|z}shrc
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/opt/homebrew-cask/Caskroom/mongodb/3.2.3-build.1/MongoDB.app/Contents/Resources/Vendor/mongodb:$PATH"
export CHEATCOLORS=true
#export http_proxy=http://127.0.0.1:1080
#export https_proxy=http://127.0.0.1:1080
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='mvim'
 fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias cgs="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
# alias rgum="diskutil unmountdisk /Volumes/*"
# alias rglg="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias rgtt="sudo defaults write /Library/Preferences/com.apple.loginwindow LoginwindowText 'To Be A Better Man \
    Pracitice Make perfect!  \n NOW \n To Find A Girl Friend'"
alias fire="open -a /Applications/FirefoxDeveloperEdition.app"
alias code="open -a ~/Applications/Visual\ Studio\ Code.app"
alias space="open -a /Applications/Emacs.app"
alias safari="open -a /Applications/Safari.app"
alias chro="open -a /Applications/Google\ Chrome.app"
alias kalei="open -a /Applications/Kaleidoscope.app"
# alias root@='root@115.238.244.239'
# alias cy='cd /home/ydcylcplatform/platform/tomcat7/webapps/yidianchengyuan/site/themes/default'
#bindkey -v

test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh
export PATH="/usr/local/sbin:$PATH"
#export PATH=$PATH:~/workspace/project/tomcat8/bin
alias npm="npm --registry=https://registry.npm.taobao.org \
--cache=$HOME/.npm/.cache/cnpm \
--disturl=https://npm.taobao.org/dist \
--userconfig=$HOME/.cnpmrc"
#alias nnpm="npm"
#alias mvim="open -a macvim"
alias vim="mvim -v"
alias cl="cd $1;ls -la"
alias ..="cl .."
alias ...="cl ../.."
alias rmm=trash
alias rl='ls ~/.trash'
alias ur=undelfile
undelfile(){
    mv -i ~/.trash/$@ ./
}
trash(){
    mv $@ ~/.trash/
}
#sed 's/ *$//g;' .zsh_history | sed '/^.\{1,4\}$/d' | sed '/^g[nlabcdusfp]\{1,5\} .*/d' | sed '/^git [nr] /d' | sed '/^rm /d' | sed '/^cgnb /d' | sed '/^touch /d' > back_history
#alias rm="mv $@ ~/.Trash/" this sentence can not be in effect, why?
# 删除dock无用图标
#defaults write com.apple.dock static-only -boolean true; killall Dock
#defaults write com.apple.dock springboard-rows -int 7 
#defaults write com.apple.dock springboard-columns -int 6
#defaults write com.apple.dock ResetLaunchPad -bool TRUE;killall Dock
alias hardseed='hardseed --saveas-path ~/downloads --topics-range 8 64 --timeout-download-picture 32 --proxy socks5://127.0.0.1:1080 --av-class aicheng_asia_non_mosaicked'
alias pc4='proxychains4 -q -f /usr/local/Cellar/proxychains-ng/4.11/etc/proxychains.conf'
#alias npm='proxychains4 -q -f /usr/local/Cellar/proxychains-ng/4.11/etc/proxychains.conf npm'
alias -s tgz='tar -xzvf'  
alias -s zip='unzip'  
alias -s bz2='tar -xjvf' 
#export HOMEBREW_CASK_OPTS="--appdir=~/Dropbox/app"
#fpath=(/Users/razorgg/Dropbox/usr/local/share/zsh-completions $fpath)

