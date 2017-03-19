export PATH="/usr/local/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/bin:$PATH"

alias helloworld="echo 'hello world'"

alias gl="git log --all --oneline --decorate --graph --pretty=format:'%h - %C(cyan)%an%Creset, %Cred%d%Creset %C(yellow)%ar%Creset : %s'"

alias gs='git status'

alias gc='git commit -m "'

alias ga='git add .'

alias bashprofile='atom ~/.bash_profile'

alias wdi='cd ~/wdi'

alias app='cd ~/wdi/work/app'

alias temp='cd ~/wdi/temp'

alias signin='ssh root@104.131.77.156'

alias bruby='bundle exec ruby'
alias sbl='open -a "Sublime Text"'
# or such line
alias sbl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

if [ -f `brew --prefix`/etc/bash_completion ]; then
	. `brew --prefix`/etc/bash_completion
fi

if [ -f $(brew --prefix)/etc/bash_completion ]; then
	GIT_PS1_SHOWDIRTYSTATE=true
	GIT_PS1_SHOWUNTRACKEDFILES=true
	#PS1='\u: \W$(__git_ps1 "[%s]") \$ '
	PS1='\[\e[32m\]\u: \W$(__git_ps1 "[%s]") \$\[\e[m\] '
fi

export GA_CLASS_NAME="TeamEskimoKisses" # url escaped
alias wdibuzz="_wdibuzz(){ curl \"http://wdi-dc-buzzer.herokuapp.com/api/buzz/do/$GA_CLASS_NAME/$(whoami | xargs)_$(ifconfig | grep ether | head -1 | sed 's/[[:space:]|:|ether]*//g')/\$1\" --silent | sed 's/[[:space:]]$//g';return; }; _wdibuzz"

bind '"\t":menu-complete'

function wifi(){
  CURRENT_DEVICE=$(networksetup -listallhardwareports | awk '$3=="Wi-Fi" {getline; print $2}')
  networksetup -setairportpower $CURRENT_DEVICE off
  networksetup -setairportpower $CURRENT_DEVICE on
}
export GITHUB_USERNAME=andrewsunglaekim
