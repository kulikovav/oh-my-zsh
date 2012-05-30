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
