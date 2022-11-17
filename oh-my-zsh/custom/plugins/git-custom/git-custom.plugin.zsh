# Aliases

alias gfza="git ls-files -m -o --exclude-standard | fzf --print0 -m | xargs -0 -t -o git add"
alias gch="git branch --format '%(refname:short)' | fzf --print0 -m | xargs -0 -t -o git checkout"
alias gfbd="git branch --format '%(refname:short)' | fzf --print0 -m | xargs -0 -t -o git branch -D"
alias gbrn="git branch -m"

# Functions

# add --skip-worktree flag to file
skip() {  git update-index --skip-worktree "$@";  git status; }

# remove --skip-worktree flag from file
unskip() {  git update-index --no-skip-worktree "$@";  git status; }

