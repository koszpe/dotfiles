
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
alias lip="cd ~/repositories/lipschitz/container/pytorch/ && docker-compose run -p 22221:22 --rm lip"
alias vat="cd ~/repositories/VAT-pytorch/container/ && docker-compose run -p 22223:22 --rm vat"
alias torch_ex="cd ~/repositories/docker/container/pytorch_example/ && docker-compose run --rm torch_example"
alias tf_ex="cd ~/repositories/docker/container/tensorflow_example/ && docker-compose run --rm tf_example"

alias tb="docker run -it --rm -u $(id -u):$(id -g) -p 7007:6006 -v /home/${USER}/cache:/cache tensorflow/tensorflow tensorboard --bind_all"


# Source .local_bash_aliases if exists
if [ -f ~/.local_bash_aliases ]; then
    . ~/.local_bash_aliases
fi
