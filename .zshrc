zstyle ':zim:zmodule' use 'degit'
ZIM_HOME=~/.zim
# Download zimfw plugin manager if missing.
if [[ ! -e ${ZIM_HOME}/zimfw.zsh ]]; then
  curl -fsSL --create-dirs -o ${ZIM_HOME}/zimfw.zsh \
      https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
fi

# Install missing modules, and update ${ZIM_HOME}/init.zsh if missing or outdated.
if [[ ! ${ZIM_HOME}/init.zsh -nt ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  source ${ZIM_HOME}/zimfw.zsh init -q
fi

# Initialize modules.
source ${ZIM_HOME}/init.zsh

alias g=git
alias gl="git log --oneline --graph--decorate"
alias gs="git status -s"
alias gc="git commit"
alias gcne="git commit --amend --no-edit"
alias gpf="git push --force-with-lease"
alias ga="git add -A -p"
alias gg="git ack"
alias grc="git rebase --continue"
alias et="emacsclient -c"
alias en="emacsclient -n"
alias xen="xargs emacsclient -n"
alias pbcopy="xsel --clipboard --input"
alias pbpaste="xsel --clipboard --output"

eval "$(zoxide init zsh --hook pwd)"
