alias vi="nvim"
alias ll="ls -l"

if status is-interactive
    set -g fish_greeting
    starship init fish | source
    neofetch
end
