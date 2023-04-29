export PATH=$PATH:~/.composer/vendor/bin
export PATH=$PATH:~/scala-2.12.0/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home
export PATH=$PATH:~/go/bin

#Import Apache Spark to the path
export SPARK_HOME=/usr/local/Apache-Spark/spark-3.0.3-bin-hadoop2.7
export PATH=$PATH:$SPARK_HOME/bin

#Aliases
alias gl="git log --pretty=oneline"
alias gb="git branch --show-current"

#oh-my-zsh configurations 
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

zstyle ':omz:update' mode auto      # update automatically without asking
zstyle ':omz:update' frequency 30

HIST_STAMPS="dd.mm.yyyy"

source $ZSH/oh-my-zsh.sh


# fzf configurations
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/usr/local/sbin:$PATH"

