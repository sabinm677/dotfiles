# Aliases

alias ip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\  -f2"
# alias ip="ipconfig getifaddr en0"

alias profile="nvim ~/.config/fish/config.fish"
alias hosts="sudo vim /etc/hosts"
alias pvim="nvim -u ~/dotfiles/nvim/php_init.vim"
alias sc="source ~/.config/fish/config.fish"
alias e="exit"
alias c="clear"

# Tmux Aliases
alias tls="tmux ls"
alias tn="tmux new -s"
alias ta="tmux attach -t"

# Git Aliases
alias g="git"
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gap="git add -p"
alias gaa="git add ."
alias gc="git commit"
alias gcm="git commit -m"
alias gcmm="git commit -m 'changes'"
# alias gp="git push origin"
alias gch="git checkout"
alias wip="git add . && git commit -m 'wip'"
# alias rework="git reset HEAD~1 --soft"
alias dev="git checkout develop"

# PHP Aliases
alias mms="php artisan make:migration:schema"
alias dump="composer dump-autoload"
alias phpunit="vendor/bin/phpunit"
alias pf="phpunit --filter "


