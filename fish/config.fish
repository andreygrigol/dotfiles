alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias ls="eza"
alias l="eza"
alias ll="eza -l"
alias la="eza -la"
alias vi="nvim"

set -xg PATH $PATH /opt/nvim-linux-x86_64/bin/

if status is-interactive
    set -g fish_greeting
    starship init fish | source
    # Commands to run in interactive sessions can go here
end

fish_add_path /home/andrey/.spicetify
