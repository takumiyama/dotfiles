## .zshenv

typeset -U path PATH

export PATH=$HOME/bin:/usr/local/bin:$PATH

# java setting
if [ -e /Library/Java ]; then
  export ANT_HOME=${HOME}/project/tools/apache-ant
  export GRADLE_HOME=${HOME}/project/tools/gradle/gradle-4.2
  export MAVEN_HOME=${HOME}/project/tools/apache-maven
  export ORACLE_HOME=${HOME}/project/tools/instantclient
  export TNS_ADMIN=${ORACLE_HOME}
  export LD_LIBRARY_PATH=${ORACLE_HOME}
  export DYLD_LIBRARY_PATH=${ORACLE_HOME}
  export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home
  export PATH=/usr/local/bin:${MAVEN_HOME}/bin:${GRADLE_HOME}/bin:${ANT_HOME}/bin:${ORACLE_HOME}:${JAVA_HOME}/bin:$PATH
fi

# go setting
if [ -e /usr/local/go ]; then
  export GOPATH=$HOME/work
  export PATH=$GOPATH/bin:/usr/local/go/bin:$PATH
fi

# node
if [ -e $HOME/.nodebrew ]; then
  export PATH=$HOME/.nodebrew/current/bin:$PATH
fi

# anyenv
if [ -e $HOME/.anyenv ]; then
  export PATH=$HOME/.anyenv/bin:$PATH
  eval "$(anyenv init -)"
fi

# composer
if [ -e $HOME/.composer ]; then
  export PATH=$HOME/.composer/vendor/bin:$PATH
fi


# 重複を除去
typeset -U path manpath
