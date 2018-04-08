#!/bin/sh
source main.sh #执行main函数



brew install python3 #安装Python3

# install and use shadowsocks

pip3 install shadowsocks #安装ss 1024
nohup sslocal -q -c ~/.Acoffee/tools/netconf &> /private/tmp/nohup.out&  #配置ss
export ALL_PROXY=socks5://127.0.0.1:14179

#安装ITerm
if [[ ! -e /Applications/iTerm.app ]]; then
    brew cask install iterm2
    defaults delete com.googlecode.iterm2
    cp config/com.googlecode.iterm2.plist $HOME/Library/Preferences
    defaults read -app iTerm >/dev/null
else
    echo "You have installed iTerm2"
fi
#安装SourceTree
if [[ ! -e /Applications/SourceTree.app/ ]]; then
    brew cask install sourcetree
else
    echo "You have installed SourceTree"
fi
#安装谷歌游览器
if [[ ! -e /Applications/Google\ Chrome.app ]]; then
    brew cask install google-chrome
else
    echo "You have installed chrome"
fi
#安装gsed
if brew ls --versions gnu-sed > /dev/null; then
    echo "You have installed gsed"
else
    brew install gnu-sed
fi

# 安装彩色终端显示
if [[ ! -e /usr/local/opt/coreutils ]]; then
    brew install coreutils
    mv /usr/local/opt/coreutils/libexec/gnubin/ls /usr/local/opt/coreutils/libexec/gnubin/gls
else
    echo "You have installed coreutils"
fi

brew install --HEAD universal-ctags/universal-ctags/universal-ctags
brew install redis
brew_install cmake
brew_install gawk
brew_install autojump
brew_install wget
brew_install node
brew_install exiv2
brew_install ssh-copy-id
brew_install imagemagick
brew_install catimg
brew_install gpg
brew_install icdiff
brew_install scmpuff
brew_install fzf
brew_install nvim
brew_install exiftool
brew install go
brew install android-sdk #安卓sdk
brew cask install android-studio #安卓开发
$(brew --prefix)/opt/fzf/install --all



if [[ ! -e ~/.oh-my-zsh ]]; then
    curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
fi







./fastwork/install-steps/dependencies.before.sh

unset ALL_PROXY
./fastwork/install-steps/dependencies.after.sh




