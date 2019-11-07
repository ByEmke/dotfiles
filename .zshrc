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

if [ -f '/Users/emke/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/emke/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/Users/emke/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/emke/google-cloud-sdk/completion.zsh.inc'; fi

# virtualenv with alias
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

# PATH additions
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"

# Custom aliases
alias load_nvm='export NVM_DIR="$HOME/.nvm" && "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"'
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
# antigen theme denysdovhan/spaceship-prompt

# Tell Antigen that you're done.
antigen apply

# source custom settings
if [ -f ~/.zshrc.custom ]; && source ~/.zshrc.custom

