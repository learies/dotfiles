# Command completion
autoload -Uz compinit
compinit

# Приглашение командной строки
export PROMPT='> '
export RPROMPT='[%1~]' 

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
export EDITOR="vim"

# Алиасы для ls
alias ls='ls --color'
alias ll='ls -l'
alias la='ls -al'

# Алиас для Neovim
alias vim='nvim'

