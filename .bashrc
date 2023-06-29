# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
	for rc in ~/.bashrc.d/*; do
		if [ -f "$rc" ]; then
			. "$rc"
		fi
	done
fi

unset rc
alias pp='protonvpn-cli c -f'
alias ppt='protonvpn-cli c --tor'
alias ksp='protonvpn-cli ks --permanent'
alias kso='protonvpn-cli ks --off'
alias updd='sudo dnf update'

PS1='\[\e[91m\][\[\e[38;5;166;1m\]\u\[\e[0;32m\]@\[\e[94;1m\]\H \[\e[38;5;160m\]--> \[\e[0m\]\w\[\e[91m\]]\[\e[0m\]\$ '
