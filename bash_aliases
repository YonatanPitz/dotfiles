alias sa='source ~/.bash_aliases'
# Git
alias gst='git status'
alias gsh='git rev-parse HEAD'
alias gsu='git submodule update --init --recursive'
alias gaa='git add --all'
alias gittok='xclip -sel clip < ~/.ssh/gittok'

alias oa='subl ~/.bash_aliases'
alias ll='ls -ltr'
alias mount-shared='sudo mount -t vboxsf VM-Shared ~/windows-shared/'
alias l=func_l
alias mkd=func_mkd
alias rmf='rm -rf'
alias -- --='l log.txt'
alias cde='cd ~/P4/behavioral-model/targets/P4-SAI'
alias grep='grep -i --color=auto'
alias dvs_sw='ssh root@10.209.80.43'
alias sonic_sw_rcon='ssh -l rcon:7048 10.208.0.32'
func_e() {
    emacs $1 &
}
func_l() {
    xterm -bg lightgrey -fg black -geometry 160x50 -e less -I $1 &
}
func_mkd() {
	mkdir $1
	cd $1
}

func_tmux_attach() {
    tmux attach -t $1
}

alias clean-docker-stopped-containers='docker ps -aq --no-trunc | xargs docker rm'
alias clean-docker-untagged-images='docker images -q --filter dangling=true | xargs docker rmi'
alias tmat=func_tmux_attach

# Python
alias python=python3
alias pip=pip3
alias ipython=ipython3
