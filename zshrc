# Command completion
autoload -Uz compinit
compinit

# Цвета
autoload -U colors
colors

# Приглашение командной строки
export PROMPT="$fg_bold[green]%n@%m:$reset_color $fg_bold[blue]%~$reset_color 
> "

# Автоматическое выполнение команды rehash после установки нового пакета
zstyle ':completion:*' rehash true

# Навигация стрелками
zstyle ':completion:*' menu select

# Автодополнение псевдонимов
setopt completealiases

# Удаление дубликатов команд
setopt HIST_IGNORE_DUPS

# Удаление из файла истории пустых строк
setopt HIST_REDUCE_BLANKS

# Удаление строк, начинающихся с пробела
setopt HIST_IGNORE_SPACE

# Редактор по умолчанию
alias vim='nvim.appimage'
export EDITOR='vim'

# Алиас для ls
alias ls='ls --color -F'
alias ll='ls -lh'
alias la='ls -al'

# Golang
export PATH=$PATH:/usr/local/go/bin
export GOCACHE=/tmp/go-cache
export GOPROXY=off  # go get GOPROXY=direct
export GOSUMDB=off

