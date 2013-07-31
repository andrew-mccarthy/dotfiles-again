eval "$(rbenv init -)"

# Aliases
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias gpp='git pull --rebase && git push'
alias gmf='git merge --ff-only'
alias pryr='pry -r ./config/environment -r rails/console/app -r rails/console/helpers'
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

# Set git autocompletion and PS1 integration
if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash
fi

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true





function __jobs {
  if [ ! $1 -eq 0 ]; then
    echo "* "
  fi
}

PS1='\[\033[31m\]$(__jobs \j)\[\033[00m\]\u@\h:\w\[\033[32m\]$(__git_ps1)\[\033[00m\]\$ '


export EDITOR='subl -w'

## GIT
# Abbreviations
git config --global alias.st status
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.br branch

# From: http://www.jukie.net/bart/blog/pimping-out-git-log
git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"

# Set bash in vi mode
set -o vi


# End fuzzyalej dotfiles

###############################################

# Start migbar dotfiles

# Aliases
#alias reload="source ~/.bashrc"
alias reload="source ~/.bash_profile"
alias ea='sublime -w ~/bin/dotfiles/bash/aliases && reload'
alias hi='echo hello'
alias tu='top -o cpu'
alias tm='top -o vsize'

alias ls='ls -altr -G'
alias l="ls -lh"
alias s="cd .."
alias a="ls -la"
alias ..='cd ..'
alias cdd='cd -'   # goto last dir cd'ed from

alias h='history'
alias c='clear'
alias cl='clear; l'
alias cls='clear; ls'

alias e='exit'

alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

#Ruby
alias irb='irb --readline -r irb/completion'

#Rails
#alias rmig='rake db:migrate && rake db:test:clone'
alias giddyup='mysql.server start && bundle && rake db:migrate && rails s'
alias goodmorning='mysql.server start && bundle && rake db:migrate && rails s'

# Git
alias gst='git status'
alias gbrt='~/bin/gbrt'
alias gmp='git checkout master && git pull'

#Common destinations
alias cdfreeosk='cd /Users/andrew/Dropbox/RedRadix_Work/Freeosk/management_portal'




# Prompt

function parse_git_branch {
  ref=$(git-symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}")" 
}    


function git_info {
    git_cwd_info
}       

RED="\[\033[0;31m\]" 
YELLOW="\[\033[0;33m\]" 
GREEN="\[\033[0;32m\]" 
GRAY="\[\033[1;30m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
LIGHT_CYAN="\[\033[1;36m\]"
NO_COLOUR="\[\033[0m\]"  


txtblk='\e[0;30m' # Black - Regular 
txtgry='\e[1;30m' # Grey
txtlgr='\e[0;37m' # Light Grey
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
badgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

# Examples on how to use above coloring in prompt:
# export PS1="\[$txtblu\]foo\[$txtred\] bar\[$txtrst\] baz : "
# export PS1="[\[$txtblu\]\$(date +%H:%M:%S)\[$txtwht\]]\w \[$bldred\]\$(parse_git_branch)\[$txtred\]\$\[$txtrst\] " 

#export PS1="\[$txtgry\]\u@\h\[$txtrst\]:\[$txtblu\]\w\[$txtylw\] \`git_cwd_info\`\n\[$txtred\]➙ \[$txtrst\] "
#export PS1="\[$txtgry\]\u@\h\[$txtrst\]:\[$txtblu\]\w\[$txtylw\]$(__git_ps1)\n\[$txtred\]➙ \[$txtrst\] "
#export PS1="\[$txtgry\]\u@\h\[$txtrst\]:\[$txtblu\]\w\[$txtylw\] $(__git_ps1)\n\[$txtred\]➙ $ \[$txtrst\] "
#export PS1="\[$txtgry\]\u@\h\[$txtrst\]:\[$txtgr\]\w\[$txtylw\] $(__git_ps1)\n\[$txtcyn\]➙ $ \[$txtrst\] "
#export PS1="\[$txtgry\]$(__jobs \j)\[$txtrst\]\u@\h:\w\[$txtrst\]:\[$txtblu\]\w\[$txtylw\] $(__git_ps1)\n\[$txtred\]➙ $ \[$txtrst\] "
#export PS1="\[$txtgry\]\$(__jobs \j)\[$txtrst\]\u@\h:\w\[$txtgrn\]$(__git_ps1)\n\[$txtcyn\]➙ $ \[$txtrst\] "
