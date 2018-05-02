#!bin/bash
if [[ -e ~/.Acoffee ]]; then
  rm -rf ~/.Acoffee
fi
#安装 HomeBrew
if [[ ! -e /usr/local/bin/brew ]]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "You have installed brew"
fi

brew install git #安装git

git clone https://github.com/Matcha00/Acoffee.git ~/.Acoffee/fastwork
cd ~/.Acoffee/fastwork
bash install.sh #运行install脚本
