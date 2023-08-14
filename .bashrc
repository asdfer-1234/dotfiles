# replacement aliases
alias ls='exa --icons --color=auto --group-directories-first --sort extension'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias ip='ip -color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias diff='diff --color=auto'
alias ranger='. ranger'
alias cd='cd -P'
alias clear='blear'
export LESS='-R --use-color -Dd+y$Du+g'
eval "$(thefuck --alias)"
export MANPAGER='nvim +Man!'
alias aur='paru'
alias yay='aur'

# shortcut aliases
alias ga='git add'
alias gm='git commit'
alias gp='git push'
alias gl='git pull'
alias gs='git status'
alias gb='git branch'
alias gh='git checkout'
alias ll='ls -alh --sort extension'
alias run='make && ./a.out'
alias c='cd ..'

mkcdir () {
	mkdir -p -- "$1" &&
	cd -P -- "$1"
}

alias md='mkcdir'
alias ddx='dragon-drop -x'

# idk man. without this alias the whole system would break
alias 2023='echo YEAR OF THE LINUX DESKTOP'


# prompt customization
BOLD="$(tput bold)"
RESET="$(tput sgr0)"
YELLOW="$(tput setaf 3)"
CYAN="$(tput setaf 6)"
WHITE="$(tput setaf 15)"
LGRAY="$(tput setaf 8)"
BLINK="$(tput blink)"
PROMPT="$(tput setaf 10)"
PS0='\[$RESET\]'
PS1='\[$LGRAY\]┌\[$BOLD\]\[$WHITE\][\[$CYAN\]$(dirs)\[$RESET\]\[$BOLD\]]\n\[$RESET\]\[$LGRAY\]└\[$BOLD\]\[$WHITE\][\[$YELLOW\]\$\[$RESET\]\[$BOLD\]] \[$RESET\]\[$PROMPT\]'
PS2='\[$LGRAY\]└─── \[$RESET\]\[$PROMPT\]'

# always keep the cursor to the bottom of the screen!!!!
blear
