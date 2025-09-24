# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/pecan/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
export PATH=$PATH:/home/p/.local/bin
fastfetch
eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/catppuccin.omp.json)"
