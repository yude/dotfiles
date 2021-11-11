export PATH="/usr/local/sbin:$PATH"
export PYTHONPATH=/usr/local/lib/python2.7/site-packages/
export PATH=$HOME/.cargo/bin:$PATH
export PATH="/usr/local/opt/openjdk/bin:$PATH"
export CPPFLAGS="-I/usr/local/opt/openjdk/include"
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  if type brew &>/dev/null; then
    FPATH=/usr/local/share/zsh-completions:/usr/local/share/zsh/site-functions:/usr/share/zsh/site-functions:/usr/share/zsh/5.7.1/functions

    autoload -Uz compinit
    compinit
  fi

PROMPT='%~ %# '

alias gcc='/usr/local/bin/gcc-10'
alias cl='clear'
