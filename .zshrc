# My zsh config with antigen

export TERM="xterm-256color"
export PATH=/usr/local/bin:/Library/TeX/texbin:/Applications/MATLAB_R2016a.app/bin/:/Users/sascha/anaconda3/bin:$PATH

# My aliases

alias semester='~/Desktop/Studium/FS6'

# Antigen setup

source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Autosuggestion bundle.
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
antigen theme bhilburn/powerlevel9k powerlevel9k

# Customize powerlevel9k theme
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(battery dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3

# Tell Antigen that you're done.
antigen apply
