# fixme - the load process here seems a bit bizarre

# use /etc/hosts and known_hosts for hostname completion
[ -r /etc/ssh/ssh_known_hosts ] && _global_ssh_hosts=(${${${${(f)"$(</etc/ssh/ssh_known_hosts)"}:#[\|]*}%%\ *}%%,*}) || _ssh_hosts=()
[ -r ~/.ssh/known_hosts ] && _ssh_hosts=(${${${${(f)"$(<$HOME/.ssh/known_hosts)"}:#[\|]*}%%\ *}%%,*}) || _ssh_hosts=()
[ -r /etc/hosts ] && : ${(A)_etc_hosts:=${(s: :)${(ps:\t:)${${(f)~~"$(</etc/hosts)"}%%\#*}##[:blank:]#[^[:blank:]]#}}} || _etc_hosts=()
[ -r ~/.servers ] && _home_servers=(${${${${(f)"$(<$HOME/.servers)"}:#[\|]*}%%\ *}%%,*}) || _home_servers=()
hosts=(
  "$_global_ssh_hosts[@]"
  "$_ssh_hosts[@]"
  "$_etc_hosts[@]"
  "$_home_servers[@]"
  "$HOST"
  localhost
)
zstyle ':completion:*:hosts' hosts $hosts

# Set up aliases
alias	mv='nocorrect mv'       # no spelling correction on mv
alias	cp='nocorrect cp'       # no spelling correction on cp
alias	mkdir='nocorrect mkdir' # no spelling correction on mkdir
alias	pu=pushd
alias	po=popd
alias	h=history

case `uname -s` in
    Linux)      
            alias	ls='ls --color=auto'
            ;;
    FreeBSD)    
            alias   ls='ls -G'
            ;;
esac

alias   lsl='ls -l'
alias	l='ls -FHa'
alias	ll='ls -FHal'
alias	v=vim
alias	s='screen -mA'
alias	d=date
alias	j='jobs -l'
alias	g='egrep --color=auto'
alias	r='sudo -E zsh'
alias	ff='df -h'
alias	p=ping
alias	trc='traceroute -I'
alias   psx='ps axeo pid,user,%cpu,vsz,wchan,args'
# chmod
alias rw-='chmod 600'
alias rwx='chmod 700'
alias r--='chmod 644'
alias r-x='chmod 755'
# List only directories and symbolic
# links that point to directories
alias lsd='ls -ld *(-/DN)'
# List only file beginning with "."
alias lsa='ls -ld .*'
# Global aliases -- These do not have to be
# at the beginning of the command line.
alias -g M='|more'
alias -g H='|head'
alias -g T='|tail'
