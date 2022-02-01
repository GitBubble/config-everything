#! /bin/bash
sudo apt install tmux
sudo apt install cscope
sudo apt install exuberant-ctags
git clone --depth=1 https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf


git clone --depth=1 https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# YCM need ninja... (the python install script in ninja provide another way to install 
wget https://github.com/ninja-build/ninja/archive/v1.10.2.tar.gz --no-check-certificate
tar xzvf v1.10.2.tar.gz
cd ninja-1.10.2
./configure.py --bootstrap
cp ninja /usr/bin/
cd ..
cp ./vim/release_vimrc ~/.vimrc
cp ./tmux/tmux.conf ~/.tmux.conf
cp import_symbol.sh /usr/bin/
sudo chmod 777 /usr/bin/import_symbol.sh
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
