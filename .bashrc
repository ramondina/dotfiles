# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

# Custom bash with git branch if in git repo:
parse_git_branch() {
      git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='\[\e[0;38;5;34m\]\t \[\e[0;90m\]$(pwd) \[\e[0;38;5;91m\]$(parse_git_branch)\n\[\e[0m\]\$ \[\e[0m\]'

# Custom aliases:
alias ap='ansible-playbook'
alias aps='ansible-playbook --syntax-check'
