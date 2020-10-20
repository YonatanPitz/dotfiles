alias sa='source ~/.bash_aliases'
# Git
alias gst='git status'
alias gsh='git rev-parse HEAD'
alias gsu='git submodule update --init --recursive'
alias gaa='git add --all'
alias gittok='xclip -sel clip < ~/.ssh/gittok'

# Onyx 
if [ -d '/mtrsysgwork/yonatanp/onyx/scripts' ]
then
    alias sg='source /mtrsysgwork/yonatanp/onyx/scripts/genenv.sh'
else
    if [ -d '/auto/mtrsysgwork/yonatanp/onyx/scripts' ]
    then
        alias sg='source /auto/mtrsysgwork/yonatanp/onyx/scripts/genenv.sh'
    fi
fi

alias oa='subl ~/.bash_aliases'
alias ll='ls -ltrh'
alias mkd=func_mkd
alias rmf='rm -rf'
alias -- --='l log.txt'
alias grep='grep -i --color=auto'
func_mkd() {
	mkdir $1
	cd $1
}

func_tmux_attach() {
    tmux attach -t -d $1
}
func_mtrs() {
    if [ -d '/mtrsysgwork/yonatanp' ]
    then
        cd '/mtrsysgwork/yonatanp'
    else
        if [ -d '/auto/mtrsysgwork/yonatanp' ]
        then
            cd '/auto/mtrsysgwork/yonatanp'
        fi
    fi
}
func_eclipse() {
    if [ -d '/app/eclipse.neon' ]
    then
        /app/eclipse.neon/eclipse -clean -vmargs -Xms512m -Xmx3000m &
    else
        if [ -d '/auto/app/eclipse.neon' ]
        then
            /auto/app/eclipse.neon/eclipse -clean -vmargs -Xms512m -Xmx3000m &
        fi
    fi
}

alias eclipse_srv=func_eclipse
alias clean-docker-stopped-containers='docker ps -aq --no-trunc | xargs docker rm'
alias clean-docker-untagged-images='docker images -q --filter dangling=true | xargs docker rmi'
alias tmat=func_tmux_attach

alias mtrs=func_mtrs

alias adb='/builds/yonatanp/adabe/adabe/adabe'
alias adb_flex='adb /mtrsysgwork/yonatanp/adabe/flex_program.adb'
alias adb_phx='adb /mtrsysgwork/yonatanp/adabe/phoenix.adb'
alias adb_cond='adb /mtrsysgwork/yonatanp/adabe/condor.adb'
