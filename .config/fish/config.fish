if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_add_path $HOME/.local/bin
alias yas "yay -Syu"
alias yar "yay -Rns"
fastfetch
oh-my-posh init fish --config ~/.config/oh-my-posh/catppuccin.omp.json | source
