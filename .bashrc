export PS1='\[\e[m\][\uMac \w]\$ '
#export PS1='\[\033[0;31m\]\H:\u \w\n]\[\$\033[0m\]'
alias ll='ls -la'
alias ls='ls -G'

export HOME=$HOME
export ANT_HOME=${HOME}/project/tools/apache-ant
export MAVEN_HOME=${HOME}/project/tools/apache-maven
export ORACLE_HOME=${HOME}/project/tools/instantclient
export TNS_ADMIN=${ORACLE_HOME}
export LD_LIBRARY_PATH=${ORACLE_HOME}
export DYLD_LIBRARY_PATH=${ORACLE_HOME}
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_45.jdk/Contents/Home

# go
export GOPATH=${HOME}/.go
export PATH=$PATH
export PATH=${PATH}:/usr/local/bin:${MAVEN_HOME}/bin:${ANT_HOME}/bin:${ORACLE_HOME}:${JAVA_HOME}/bin
#eval "$(chef shell-init bash)"
#export PATH=${PATH}:/usr/local/opt/libxml2/bin

# anyenv
#export PATH=${HOME}/.anyenv/bin:${PATH}
#eval "$(anyenv init -)"
