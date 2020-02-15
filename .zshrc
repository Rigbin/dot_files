# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

ENABLE_CORRECTION="true"

plugins=(
  git
  zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

#Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export VISUAL=vim
  export EDITOR=${VISUAL}
else
  export VISUAL=vim
  export EDITOR=${VISUAL}
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.history
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob notify
unsetopt beep
bindkey -e

# The following lines were added by compinstall
zstyle :compinstall filename "$HOME/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [ -f ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

if [ -f ~/.aliases ]; then
  source ~/.aliases
fi

if [ -d ~/bin ]; then
  export PATH=${PATH}:${HOME}/bin
fi

if [ -d ~/bin/Android/Sdk ]; then
  export ANDROID_HOME="${HOME}/bin/Android/Sdk"
  export ANDROID_SDK_ROOT="${HOME}/bin/Android/Sdk"
  export PATH=${PATH}:${ANDROID_HOME}/platform-tools:${ANDROID_HOME}/tools
fi

if [ -f ~/bin/bundletool/bin/bundletool.jar ]; then
  export ANDROID_BUNDLETOOLS="${HOME}/bin/bundletool/bin"
  export PATH=${PATH}:${ANDROID_BUNDLETOOLS}
fi

if [ -d ~/.npm-global/bin ]; then
  export PATH=${PATH}:${HOME}/.npm-global/bin
fi

if [ -x /usr/bin/vim ]; then
  export VISUAL=vim
  export EDITOR="${VISUAL}"
fi

