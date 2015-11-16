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

### Install YouCompleteMe:
```
sudo aptitude install cmake # need for YouCompleteMe
cd ~/.vim/bundle/YouCompleteMe
./install.sh
```

### Install command-t
```
sudo aptitude install ruby ruby-dev
cd ~/.vim/bundle/command-t/ruby/command-t
ruby extconf.rb
make
```

### Install ctags
needs for most code navigation plugins.
```
sudo aptitude install exuberant-ctags
``` 



# TODO
- project settings


# Vim links
- [My cheat sheet](cheatsheet.md)
- [perfect vimrc vim config file](http://spf13.com/post/perfect-vimrc-vim-config-file)
- [HowTo по Vim](http://konishchevdmitry.blogspot.ru/2007/09/vim-howto.html)
- [Очередной HowTo по Vim](http://konishchevdmitry.blogspot.ru/2008/07/howto-vim.html)
- [Powerline и конфиг](http://sarkisn.github.io/blog/2014/02/22/vim-config-install/)
- [Tabs](http://habrahabr.ru/post/102373/)
- [VIM for (PHP) Programmers](http://www.slideshare.net/ZendCon/vim-for-php-programmers-presentation) (28/75)
- [Traversing text in Insert mode](http://stackoverflow.com/questions/1737163/traversing-text-in-insert-mode)
- [Vim registers](http://stackoverflow.com/a/3997110)