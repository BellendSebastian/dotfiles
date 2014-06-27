# i have no fucking clue what this shit does lol
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh
plugins=(git mvn catimg vagrant)
unsetopt correct_all

# aliases
alias serve='python -m SimpleHTTPServer 3000'

# super happy funtime path variables
export PATH=/usr/local/share/npm/bin:/Library/Python/2.7/site-packages:/usr/local/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin:/usr/X11/bin:/usr/local/Cellar/go/1.0.3/bin/
export MAGICK_HOME="/usr/local/Cellar/imagemagick/6.8.0-10"
export PATH="/usr/local/share/npm/bin/:$PATH"

