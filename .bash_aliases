
# Config version controling: https://www.atlassian.com/git/tutorials/dotfiles
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dotf='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias h='htop'
alias n='watch nvidia-smi'
alias lsfull='find `pwd`'
alias search='find `pwd` -name'


# Git aliases
alias gcached='git diff --cached'
alias gc='git commit -m'
alias gi='git add -i'
alias gp='git push'
alias graph='git log --all --decorate --oneline --graph'
alias lg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
alias lg2="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"


# SSH aliases


# Docker aliases
alias lip="cd ~/repositories/lipschitz/container/pytorch/ && docker-compose run -p 22221:22 --rm lip"
alias vat="cd ~/repositories/VAT-pytorch/container/ && docker-compose run -p 22223:22 --rm vat"
alias vatl="cd ~/repositories/VAT-pytorch/container/ && docker-compose run --rm vat"
alias vat_tf="cd ~/repositories/vat_tf/container/ && docker-compose run -p 22224:22 --rm vat_tf"
alias torch_ex="cd ~/repositories/docker/container/pytorch_example/ && docker-compose run --rm torch_example"
alias tf_ex="cd ~/repositories/docker/container/tensorflow_example/ && docker-compose run --rm tf_example"
alias valp_tf="cd ~/repositories/adversarial_lipschitz_regularization/container/ && docker-compose run -p 22225:22 --rm valp_tf"
alias valp_tfl="cd ~/repositories/adversarial_lipschitz_regularization/container/ && docker-compose run --rm valp_tf"

alias sgr="cd ~/repositories/stylegan2-ada-pytorch/container/ && ./docker_run.sh -c bash -p 22226"
alias sgl="cd ~/repositories/stylegan2-ada-pytorch/container/ && ./docker_run.sh -c bash"

alias sg2r="cd ~/repositories/stylegan2/container/ && ./docker_run.sh -c bash -p 22231"
alias sg2l="cd ~/repositories/stylegan2/container/ && ./docker_run.sh -c bash"

alias ckar="cd ~/repositories/cka_alter/container/ && ./docker_run.sh -i -c bash -p 22227"
alias ckal="cd ~/repositories/cka_alter/container/ && ./docker_run.sh -i -c bash"
alias ckajupy="cd ~/repositories/cka_alter/container/ && ./docker_run.sh -i -j 8889 -c 'jupyter notebook --ip=0.0.0.0 --no-browser'"


alias bar="cd ~/repositories/bilateral_attention/container/ && ./docker_run.sh -i -c bash -p 22228"
alias bal="cd ~/repositories/bilateral_attention/container/ && ./docker_run.sh -i -c bash"

alias vaer="cd ~/repositories/PyTorch-VAE/container/ && ./docker_run.sh -i -c bash -p 22230"
alias vael="cd ~/repositories/PyTorch-VAE/container/ && ./docker_run.sh -i -c bash"

alias binr="cd ~/repositories/binary-classification/container/ && ./docker_run.sh -i -c bash -p 22232"
alias binl="cd ~/repositories/binary-classification/container/ && ./docker_run.sh -i -c bash"

alias binr="cd ~/repositories/woundai/container/ && ./docker_run.sh -i -c bash -p 22233"
alias binl="cd ~/repositories/woundai/container/ && ./docker_run.sh -i -c bash"

alias tb="docker run -it --rm -u $(id -u):$(id -g) -p 7007:6006 -v /home/${USER}/cache:/cache tensorflow/tensorflow tensorboard --bind_all"
alias tb2="docker run -it --rm -u $(id -u):$(id -g) -p 7008:6006 -v /home/${USER}/cache:/cache tensorflow/tensorflow tensorboard --bind_all"

# tmux aliases
alias atm="tmux attach -t"
alias ntm="tmux new -s"


# Source .local_bash_aliases if exists
if [ -f ~/.local_bash_aliases ]; then
    . ~/.local_bash_aliases
fi
