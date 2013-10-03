ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh
plugins=(git)
unsetopt correct_all

alias runsolr='MAVEN_OPTS="-Xmx8g" mvn jetty:run -Djetty.port=20100'
alias runload='MAVEN_OPTS="-Xmx8g" mvn clean package exec:java'
alias serve='python -m SimpleHTTPServer 3000'
alias qm="mvn -DskipTests -DskipITs -Dmaven.test.skip"
alias gr="git fetch --all; gco master; git reset --hard origin/master"

export GOPATH=$HOME/go
export PATH=/usr/local/share/npm/bin:/Library/Python/2.7/site-packages:/usr/local/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin:/usr/X11/bin:/usr/local/Cellar/go/1.0.3/bin/
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export PATH="$HOME/.rbenv/bin:$PATH"

eval "$(rbenv init -)"
