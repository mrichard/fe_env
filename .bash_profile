#!/bin/bash

############## path var
export PATH=/usr/local/Cellar/vim/7.4.488/bin:/usr/local/Cellar/git/2.2.1/bin:/Users/mrichard4/Documents/WORK/workspace/build-tools/trunk/ant/bin:/usr/local/bin/npm:/usr/local/scala/scalate-1.6.1/bin:/usr/local/Cellar:$PATH

############## function helpers

# mkdir and cd
function mcd() {
  mkdir -p "$1" && cd "$1";
}

# slot access
function slot_me() {
  /usr/bin/ssh tudvmxr@devslot$@.saksdirect.com;
}

function Ppds() {
grunt requirejs; grunt build:global2; grunt build:global;
}

function Dpds(){
grunt requirejs; grunt build:global2 --development; grunt deploy:global2;
}

function slot_su() {
  /usr/bin/ssh bmadmin@devslot$@.saksdirect.com;
}

# list of active network connections
function spy() { 
  lsof -i -P +c 0 +M | grep -i "$1";
}

function curlAk() {
  curl -v -s -o /dev/null -H "Pragma: akamai-x-cache-on" -H "Pragma: akamai-x-cache-remote-on" -H "Pragma: akamai-x-check-cacheable" -H "Pragma: akamai-x-get-cache-key" -H "Pragma: akamai-x-get-true-cache-key" -H "Pragma: akamai-x-get-extracted-values" -H "Pragma: akamai-x-get-request-id" -H "Pragma: akamai-x-get-client-ip" -H "Pragma: akamai-x-get-cache-key" -H "Pragma: akamai-x-get-extracted-values" -H "Pragma: akamai-x-get-nonces" -H "Pragma: akamai-x-get-ssl-client-session-id" -H "Pragma: akamai-x-get-true-cache-key" -H "Pragma: akamai-x-serial-no" $@
}

#### PDS
alias startpds='nohup ./product-detail-service -DconfigDir=/Users/mrichard4/saksservices/config -Denv=dev-s5a &'



############## aliases

# git logs
alias lg='git log --graph --full-history --all --color --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"

#list all processes
alias tm='ps -ef | grep'

# log into preview
alias prev_it='ssh tudvmxr@sd1pis01lx-vip.saksdirect.com'


alias sbl='open -a "Sublime Text 2"'
alias sb3='open -a "Sublime Text"'
############## MISC

# add z.sh functionality
. /Users/mrichard4/Documents/WORK/GITSPACE/z/z.sh




[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
#eval "$(chef shell-init bash)"

case $- in
   *i*) source ~/.bashrc
esac


