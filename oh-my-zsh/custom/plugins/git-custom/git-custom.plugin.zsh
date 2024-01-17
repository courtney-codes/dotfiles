# Aliases

alias gfza="git ls-files -m -o --exclude-standard | fzf --print0 -m | xargs -0 -t -o git add"
alias gch="git branch --format '%(refname:short)' | fzf --print0 -m | xargs -0 -t -o git checkout"
alias gfbd="git branch --format '%(refname:short)' | fzf --print0 -m | xargs -0 -t -o git branch -D"
alias gpnv="git push --no-verify"
alias gbrn="git branch -m ${current_branch}"
alias gpfnv="git push --force-with-lease --no-verify"

alias gcbmain="git branch --format '%(refname:short)' | grep -v main | xargs -0 -t -o git branch -D"

# Functions

# add --skip-worktree flag to file
skip() {  git update-index --skip-worktree "$@";  git status; }

# remove --skip-worktree flag from file
unskip() {  git update-index --no-skip-worktree "$@";  git status; }

