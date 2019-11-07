# Profiler, leave #2 at the top, add #3 at the end of file. Rerun zsh
# zmodload zsh/zprof
# zprof

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
PROMPT='
%F{244}%n@%m|%{$fg_bold[green]%}%~%{$reset_color%}$(git_prompt_info) ⌚ %{$fg_bold[red]%}%*%{$reset_color%}
$ '

# source custom settings
if [ -f ~/.zshrc.custom ]; && source ~/.zshrc.custom

