alias grep="grep --color=auto"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"

alias ls='eza'
alias ll='eza -l'
alias la='eza -la'
alias l='eza'
alias vi="nvim"

if status is-interactive
    # Commands to run in interactive sessions can go here
    set -g fish_greeting
    starship init fish | source
end
