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
alias java16="export JAVA_HOME=$JAVA_16"

export GOPATH=$HOME/go
export MAGICK_HOME="/usr/local/Cellar/imagemagick/6.8.0-10"
#export DYLD_LIBRARY_PATH="$MAGICK_HOME/lib"
export PATH=/Library/Python/2.7/site-packages:/usr/local/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin:/usr/X11/bin:/usr/local/Cellar/go/1.0.3/bin/:$MAGICK_HOME/bin
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA_16='/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/'
export PATH="$HOME/.rbenv/bin:$PATH"
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=256m"
export PATH="/usr/local/share/npm/bin/:$PATH"

eval "$(rbenv init -)"
