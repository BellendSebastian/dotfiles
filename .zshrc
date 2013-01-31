ZSH=$HOME/.oh-my-zsh
unsetopt correct_all
alias tmux="TERM=screen-256color-bce tmux"
alias dramasolr='MAVEN_OPTS="-Xmx3g" mvn jetty:run -Djetty.port=3000'
alias dramaload='MAVEN_OPTS="-Xmx3g" mvn clean package exec:java'
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh
export PATH=/usr/local/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin:/usr/X11/bin
alias qm="mvn -DskipTests -DskipITs -Dmaven.test.skip"
alias gr="git fetch --all; gco master; git reset --hard origin/master"
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
