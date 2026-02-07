# -- NAVIGATION --

#alias cd='check_repo && cd'
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# -- NVIM --

# alias vim='nvim'
# alias vim="neovide >/dev/null 2>&1 & disown"
alias vimconf='nvim ~/.config/nvim/'
alias fishconf='nvim ~/.config/fish/'

# -- LS --

alias ls='eza --color=always --group-directories-first'
alias la='eza -a --color=always --group-directories-first'
alias ll='eza -l --color=always --group-directories-first'
alias lt='eza -aTI target --color=always --group-directories-first'
alias l.='eza -a | grep -E "^."'



# -- CONFIRMATION --

alias cp='cp -i'
alias mv='mv -i'
# alias rm='rm -i'

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


# -- DOCKER --
alias du='docker compose up -d'
alias dk='docker compose kill'
alias dd='docker compose down'
alias dl='docker compose logs -f'



# -- MOI --
alias intellij="/opt/intellij/bin/idea.sh"
alias vpnDownAppart="sudo wg-quick down freebox"
alias vpnUpAppart="sudo wg-quick up freebox"
alias ssh-appart="ssh pi@192.168.1.17"
alias ssh-maison="ssh elouan@192.168.1.18"
alias pick-color='gcolor3'


alias vpnDownMaison="sudo wg-quick down maison"
alias vpnUpMaison="sudo wg-quick up maison"


alias kt="nohup kitty --directory \"$(pwd)\" >/dev/null 2>&1 & disown"



# -- SHORTCUT DIRECTORIES --
alias web='cd ~/Documents/actual/'


# -- SIMPLIFY --
alias python='python3'
