ZSH=$HOME/.oh-my-zsh
unsetopt correct_all
alias tmux="TERM=screen-256color-bce tmux"
alias dramasolr='MAVEN_OPTS="-Xmx8g" mvn jetty:run -Djetty.port=20100'
alias dramaload='MAVEN_OPTS="-Xmx8g" mvn clean package exec:java'
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh
export PATH=/Library/Python/2.7/site-packages:/usr/local/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin:/usr/X11/bin
alias qm="mvn -DskipTests -DskipITs -Dmaven.test.skip"
alias gr="git fetch --all; gco master; git reset --hard origin/master"
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
echo "WOLOLOLOLOLOLOLLLLOLOLOOOOLOL $TTY"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
