#! /bin/bash
# get tmux done
apt install cscope
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf


git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# YCM need ninja... (the python install script in ninja provide another way to install 
wget https://github.com/ninja-build/ninja/archive/v1.8.2.tar.gz --no-check-certificate
tar xzvf v1.8.2.tar.gz
cd ninja-1.8.2
./configure.py --bootstrap
cp ninja /usr/bin/
cd ..
cp ./vim/release_vimrc ~/.vimrc
cp ./tmux/tmux.conf ~/.tmux.conf
# reboot all tmux process
tmux kill-server
echo "********please ignore the error ,hit Enter！********"
# ready install
vim +PluginInstall +qall

# re-config YCM
cd ~/.vim/bundle/YouCompleteMe
./install.py  --clang-completer   --java-completer
cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/

cd ~/.vim/bundle/ctags/
./autogen.sh
./configure prefix=/usr
make -j64
make install
