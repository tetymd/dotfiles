# zplug
source ~/.zplug/init.zsh
zplug 'zplug/zplug', hook-build:'zplug --self-manage'
# theme (https://github.com/sindresorhus/pure#zplug)　好みのスキーマをいれてくだされ。
zplug "mafredri/zsh-async"
zplug "sindresorhus/pure"
# 構文のハイライト(https://github.com/zsh-users/zsh-syntax-highlighting)
zplug "zsh-users/zsh-syntax-highlighting"
# history関係
zplug "zsh-users/zsh-history-substring-search"
# タイプ補完
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"
zplug "b4b4r07/enhancd", use:init.sh

# Then, source plugins and add commands to $PATH
zplug load

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# The following lines were added by compinstall

# zstyle ':completion:*' completer _complete _ignored
# zstyle :compinstall filename '/home/tetymd/.zshrc'

# autoload -Uz compinit
# compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# bindkey -e
# End of lines configured by zsh-newuser-install

# alias
alias ls="ls -G"
alias la="ls -a"
alias ll="ls -lh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
