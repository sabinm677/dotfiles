export GITAWAREPROMPT=~/.bash/git-aware-prompt
source "${GITAWAREPROMPT}/main.sh"

if [ -f `brew --prefix`/etc/bash_completion.d/git-completion.bash ]; then
  . `brew --prefix`/etc/bash_completion.d/git-completion.bash
  # Ref: https://stackoverflow.com/a/9869478
  # Add git completion aliases
  __git_complete g __git_main
  __git_complete gch _git_checkout
fi

# export PS1="\w \$GAP\$ "

export PS1="\[$bldgrn\]\w\[$txtrst\] \$GAP\$ " 
# export PS1="\w \[$txtcyn\][$git_branch]\[$txtred\]\$git_dirty\[$txtrst\]\$ "
# export PS1="\u@\h \w \[\$txtcyn\]\$git_branch\[\$txtred\]\$git_dirty\[\$txtrst\]\$ "

export GO111MODULE=on
export PATH="$PATH:~/go/bin/wails"
export PATH="$PATH:~/go/bin"
export PATH="$PATH:/usr/local/go/bin"


# Aliases

alias ip="ifconfig | grep 'inet ' | grep -v 127.0.0.1 | cut -d\  -f2"
# alias ip="ipconfig getifaddr en0"

alias profile="vim ~/.bash_profile"
alias pvim="nvim -u ~/dotfiles/nvim/php_init.vim"
alias sc="source ~/.bash_profile"
alias e="exit"

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
alias gc="git commit -m"
alias gcm="git commit -m 'changes'"
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


# Get DateTime
dt() {
  echo "$(date +%Y%m%d%H%M%S)"
}
