#! /bin/bash

sudo apt install curl -y
sudo apt install wget -y
sudo apt install tldr -y
sudo apt install tmux -y
sudo apt install cscope -y
sudo apt install exuberant-ctags -y
sudo apt install git -y


sudo cat hosts >> /etc/hosts

unset ALL_PROXY

curl -flo ./hosts https://gitee.com/isevenluo/github-hosts/raw/master/hosts

export ALL_PROXY=socks5://127.0.0.1:1090


curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

tmux source ~/.tmux.conf


cp ./vim/minimum_vimrc ~/.vimrc
cp ./tmux/tmux.conf ~/.tmux.conf
cp import_symbol.sh /usr/bin/

sudo chmod 777 /usr/bin/import_symbol.sh
# reboot all tmux process
tmux kill-server
echo "********please ignore the error ,hit Enter！********"

vim +PlugInstall 


