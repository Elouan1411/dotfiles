# -- NAVIGATION --

#alias cd='check_repo && cd'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# -- NVIM --

alias vim='nvim'

# -- LS --

alias ls='eza --color=always --group-directories-first'
alias la='eza -a --color=always --group-directories-first'
alias ll='eza -l --color=always --group-directories-first'
alias lt='eza -aTI target --color=always --group-directories-first'
alias l.='eza -a | grep -E "^."'



# -- CONFIRMATION --

alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# -- PS --

alias psa='ps auxf'
alias psgrep='ps aux | grep -v grep | grep -i -e VSZ -e'
alias psmem='ps auxf | sort -nr -k 4'
alias pscpu='ps auxf | sort -nr -k 3'

# -- GIT --

alias ga='git add .'
alias gb='git branch'
alias gco='git checkout'
alias gcl='git clone'
alias gcm='git commit -m'
alias gf='git fetch'
alias gl='git pull origin'
alias gp='git push origin'
alias gt='git tag'
alias gtn='git tag -a'

# -- MISC --

alias grep='grep --color=auto'
alias df='df -h'
alias free='free -m'
alias jctl='journalctl -p 3 -xb'
alias mpv='mpv --hwdec=vaapi'
alias tb='nc termbin.com 9999'



# -- MOI --
alias intellij="/opt/intellij/bin/idea.sh"
alias vpnDownNoopy="sudo wg-quick down freebox"
alias vpnUpNoopy="sudo wg-quick up freebox"
alias pick-color='gcolor3'
