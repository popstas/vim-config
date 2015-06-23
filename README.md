# vim-config
My vim config.

# Installation

## With ansible
```
ansible-playbook 
```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget -O ~/.vimrc https://raw.githubusercontent.com/popstas/vim-config/master/.vimrc
vim -c "PluginUpdate"
```

or
```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/popstas/vim-config.git ~/vim-config
test -f ~/.vimrc && mv ~/.vimrc ~/.vimrc.bak 
ln -s ~/vim-config/.vimrc ~/.vimrc
vim -c "PluginUpdate"
```

then exit Vim and install YouCompleteMe:
```
sudo aptitude install cmake # need for YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.sh
```