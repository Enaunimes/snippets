# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
alias ls="ls -G"
# End of lines configured by zsh-newuser-install
PATH=$PATH:~/.local/bin
WORDCHARS=""

unsetopt menu_complete

bindkey '\ef' emacs-forward-word
bindkey '\eb' emacs-backward-word
