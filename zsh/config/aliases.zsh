# all alias are here
alias ls="lsd"
alias ll="colorls"
alias tree="colorls --tree"
alias desktop="cd ~/Desktop/"
alias cls="clear"
alias coding="cd ~/Coding/"
alias cd="z"
alias cat="bat"

# brew shortcuts
alias bl="brew services list"
alias bs="brew services stop --all"
alias mongodb="brew services start mongodb-community"
alias redis="brew services start redis"


# For JavaScript work
alias nrd="npm run dev"
alias nr="npm run"
alias nrs="npm run start"
alias nrb="npm run build"
alias ni="npm install"

alias prd="pnpm run dev"
alias pr="pnpm run"
alias prs="pnpm run start"
alias prb="pnpm run build"
alias pi="pnpm install"

alias brd="bun run dev"
alias br="bun run"
alias brs="bun run start"
alias brb="bun run build"

# for Rust
alias cor="cargo run"
alias cn="cargo new"

# Git alias
# website: https://jonsuh.com/blog/git-command-line-shortcuts/
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add --all'
alias gau='git add --update'
alias gb='git branch'
alias gbd='git branch --delete '
alias gc='git commit'
alias gcm='git commit --message'
alias gcf='git commit --fixup'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcos='git checkout staging'
alias gcod='git checkout develop'
alias gd='git diff'
alias gda='git diff HEAD'
alias gi='git init'
alias glg='git log --graph --oneline --decorate --all'
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='git merge --no-ff'
alias gma='git merge --abort'
alias gmc='git merge --continue'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gr='git rebase'
alias gs='git status'
alias gss='git status --short'
alias gst='git stash'
alias gsta='git stash apply'
alias gstd='git stash drop'
alias gstl='git stash list'
alias gstp='git stash pop'
alias gsts='git stash save'
# Git log find by commit message
function glf() { git log --all --grep="$1"; }

