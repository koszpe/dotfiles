
# Config version controling: https://www.atlassian.com/git/tutorials/dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'


alias h='htop'
alias n='watch nvidia-smi'


# Git aliases
alias gcached='git diff --cached'
alias gc='git commit -m'
alias gi='git add -i'
alias gp='git push'

# SSH aliases


# Docker aliases
alias lip="cd ~/repositories/lipschitz/container/pytorch/ && docker-compose run -p 22221:22 lip"

# Source .local_bash_aliases if exists
if [ -f ~/.local_bash_aliases ]; then
    . ~/.local_bash_aliases
fi
