export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Profiler, leave #2 at the top, add #3 at the end of file. Rerun zsh
# zmodload zsh/zprof
# zprof

# Custom functions
print-colors() {
    for i in {1..256}; do print -P "%F{$i}Color : $i"; done;
}

# Custom config
export VISUAL=vim
export EDITOR="$VISUAL" 
# eval "$(rbenv init -)"

# zsh completion
# fpath=(/usr/local/share/zsh-completions $fpath)
# fpath=(/usr/local/share/zsh/site-functions $fpath)

# Auto complete
autoload -Uz compinit && compinit -i
autoload -U +X bashcompinit && bashcompinit
# source $(brew --prefix)/etc/bash_completion.d/az
source <(kubectl completion zsh)

# Custom aliases
alias mux='tmuxinator'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'

# Antigen config
source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle tmux
antigen bundle tmuxinator
antigen bundle command-not-found
antigen bundle web-search
antigen bundle azure
antigen bundle docker
antigen bundle kubectl

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Auto suggestions
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
# antigen theme amuse 
antigen theme romkatv/powerlevel10k 

# Tell Antigen that you're done.
antigen apply

# Prompt from amuse with user@host prepended
MYIP=$(ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}')
SEPARATOR="%F{166} | "
prompt_declaration=(
    "%F{202}[%m]"
    $SEPARATOR
    "%F{220}%n@"$MYIP
    $SEPARATOR
    "%F{243}%*%{$reset_color%}"
    $SEPARATOR
)
PROMPT='${(j::)prompt_declaration} $(git_prompt_info) ➜ '
# PROMPT='
# %F{202}[FTP] %F{220}%n@%m|%{$fg_bold[green]%}%~%{$reset_color%}$(git_prompt_info) ⌚ %{$fg_bold[red]%}%*%{$reset_color%}
# $ '

# source custom settings
# if [ -f ~/.zshrc.local ]; && source ~/.zshrc.local
source ~/.zshrc.local


# The next line updates PATH for the Google Cloud SDK.
# if [ -f '/Users/mk/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/mk/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
# if [ -f '/Users/mk/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/mk/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Slow start, but all plugins loaded when starts
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
