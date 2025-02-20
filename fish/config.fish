starship init fish | source

export PATH="$PATH:/opt/nvim-linux64/bin"

#Aliases
alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias vi='nvim'

if status is-interactive
    set -g fish_greeting
    # Commands to run in interactive sessions can go here
end

fish_add_path /home/andrey/.spicetify
