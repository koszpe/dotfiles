# dotfiles

origin: https://www.atlassian.com/git/tutorials/dotfiles

## Install your dotfiles onto a new system

1. add new ssh key to github

2. Run these commands on the new system
```
git clone --bare git@github.com:koszpe/dotfiles.git $HOME/.dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
config checkout
config config --local status.showUntrackedFiles no
```

3. add pull to .baschrc
```
echo -e "\ndotfiles" pull >> .bashrc.backup 
```
