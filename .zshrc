
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
export ZSH_THEME="clean"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want disable red dots displayed while waiting for completion
# DISABLE_COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)
plugins=(vi-mode)
source $ZSH/oh-my-zsh.sh
#export GOROOT=/usr/local/Cellar/go/1.4.2/libexec
export GOROOT=/usr/local/go
# Customize to your needs...
export PATH=/Users/johncai/perl5/perlbrew/bin:/Users/johncai/perl5/perlbrew/perls/perl-5.16.0/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

alias ll="ls -al"
export PATH=$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/mysql/bin:/usr/local/go/bin
export PATH=$PATH:/Users/johncai/usr/bin
#export PATH=$PATH:/usr/libexec
export PATH=$PATH:/usr/local/Cellar/openldap/2.4.39/libexec
export GOPATH=/Users/johncai/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:/scala-2.10.4/bin
export PATH=$PATH:/Users/johncai/csshX-0.74
export PATH=$PATH:/Users/johncai/Scripts
export PATH=$PATH:/Users/johncai/macvim/MacVim-snapshot-73/
export PATH=$PATH:/usr/local/Cellar/logrotate/3.9.1/sbin
# aliases

alias proj="cd /Users/johncai/Projects"
alias goproj="cd $GOPATH"
alias vagenv="cd /Users/johncai/VagrantEnvironments"
alias sd="cd /Users/johncai/VagrantEnvironments/sendgrid_development && vagrant ssh"
alias coredev="cd /Users/johncai/VagrantEnvironments/core_development && vagrant ssh" 
alias jump="ssh jcai@jump.sendgrid.net"
alias goinit="mkdir src bin pkg"
alias gobuild-linux="GOOS=linux GOARCH=amd64 go build"
alias testecho="echo $PWD"
alias dc="docker-compose"
alias dm="docker-machine"
export ZSH=$HOME/.oh-my-zsh

alias vim='mvim -v'
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0.jdk/Contents/Home
export TERM=screen-256color
eval "$(docker-machine env dev)"
bindkey "^R" history-incremental-search-backward
alias d="docker"
pushd()
{
  if [ $# -eq 0 ]; then
    DIR="${HOME}"
  else
    DIR="$1"
  fi

  builtin pushd "${DIR}" > /dev/null
  #echo -n "DIRSTACK: "
  #dirs
}

pushd_builtin()
{
  builtin pushd > /dev/null
  #echo -n "DIRSTACK: "
  #dirs
}

popd()
{
  builtin popd > /dev/null
  #echo -n "DIRSTACK: "
  #dirs
}

alias cd='pushd'
alias b='popd'
alias flip='pushd_builtin'



#Inspect the ip address for your mp-ide
function dip() {
docker inspect -f '{{.NetworkSettings.IPAddress}}' docker-dns
}

# kamta dev environment in docker
function ddev() {
docker run --rm -it --dns `dip` --dns-search docker --name ${1}1 --hostname ${1}1 -v /Users/johncai/Projects/$1:/opt/sendgrid/$1 --volumes-from syslog --volumes-from spool docker.sendgrid.net/sendgrid/$1 /bin/bash
}
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

alias g="grep"

# ...other stuff...
#
 if [[ ! $TERM =~ screen ]]; then
     exec tmux
 fi
