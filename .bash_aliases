
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
alias vat_tf="cd ~/repositories/vat_tf/container/ && docker-compose run -p 22224:22 --rm vat_tf"
alias torch_ex="cd ~/repositories/docker/container/pytorch_example/ && docker-compose run --rm torch_example"
alias tf_ex="cd ~/repositories/docker/container/tensorflow_example/ && docker-compose run --rm tf_example"
alias valp_tf="cd ~/repositories/adversarial_lipschitz_regularization/container/ && docker-compose run -p 22225:22 --rm valp_tf"

alias tb="docker run -it --rm -u $(id -u):$(id -g) -p 7007:6006 -v /home/${USER}/cache:/cache tensorflow/tensorflow tensorboard --bind_all"

# tmux aliases
alias atm="tmux attach -t"
alias ntm="tmux new -s"


# Source .local_bash_aliases if exists
if [ -f ~/.local_bash_aliases ]; then
    . ~/.local_bash_aliases
fi
