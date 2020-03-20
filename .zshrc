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
antigen bundle heroku
antigen bundle pip
antigen bundle tmux
antigen bundle tmuxinator
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme amuse 

# Tell Antigen that you're done.
antigen apply

# Prompt from amuse with user@host prepended
MYIP=$(ifconfig eth0| grep 'inet ' | awk '{print $2}')
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
if [ -f ~/.zshrc.local ]; && source ~/.zshrc.local

