# Command completion
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

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
alias vim='nvim'
export EDITOR='vim'

# Алиас для ls
alias ls='ls --color -F'
alias ll='ls -lh'
alias la='ls -al'

# Podman
alias docker="podman"

# Golang
export GOCACHE=/tmp/go-cache
export GOPROXY=direct  # go get GOPROXY=direct
export GOSUMDB=off

# Cross-Shell Prompt
eval "$(starship init zsh)"

# GnuPG
export GPG_TTY=$(tty)

# Node.js
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
