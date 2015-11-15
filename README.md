# vim-config
My vim config.

# Installation

## With ansible
`ansible-playbook test.yml`

## With command line

```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
wget -O ~/.vimrc https://raw.githubusercontent.com/popstas/vim-config/master/files/.vimrc
vim -c "PluginUpdate"
```

or

```
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/popstas/vim-config.git ~/vim-config
test -f ~/.vimrc && mv ~/.vimrc ~/.vimrc.bak 
ln -s ~/vim-config/files/.vimrc ~/.vimrc
vim -c "PluginUpdate"
```

then exit Vim and install YouCompleteMe:
```
sudo aptitude install cmake # need for YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.sh
```

`sudo aptitude install exuberant-ctags` needs for most code navigation plugins.



# TODO
- project settings


# vim links
- [my cheat sheet](cheatsheet.md)
- [Tabs](http://habrahabr.ru/post/102373/)
- [Tutorial in slides](http://www.slideshare.net/ZendCon/vim-for-php-programmers-presentation)
- [Traversing text in Insert mode](http://stackoverflow.com/questions/1737163/traversing-text-in-insert-mode)
- [Registers](http://stackoverflow.com/a/3997110)