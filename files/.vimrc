" http://konishchevdmitry.blogspot.ru/2008/07/howto-vim.html
" http://sarkisn.github.io/blog/2014/02/22/vim-config-install/

" begin of Vundle include
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Bundle 'gmarik/Vundle.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'evanmiller/nginx-vim-syntax'
" syntax check
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'terryma/vim-multiple-cursors'
" http://habrahabr.ru/post/137170/
Bundle 'lpenz/vimcommander'
" startup window
Bundle 'mhinz/vim-startify'
Bundle 'tpope/vim-surround'
Bundle 'Valloric/YouCompleteMe'
Bundle 'Markdown'
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}

" Bundle 'git://git.wincent.com/command-t.git'
" Bundle 'risbra/csv.vim'
" Bundle 'mru'
" Bundle 'taglist'
" Bundle 'joonty/vdebug'
" Bundle 'wakatime/vim-wakatime'
" Bundle 'daylerees/colour-schemes', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required for Vundle

syntax enable
set number                   " line numbers
set mouse=a                  " mouse wheel, see :help mouse
colorscheme solarized        " let g:solarized_termcolors=256
set background=dark          " color scheme




""""""" Basic settings """""""

set laststatus=2             " Always show Powerline
set backspace=indent,eol,start " backspace fix - http://vim.wikia.com/wiki/Backspace_and_delete_problems


set tabstop=4                " Размер табуляции
set shiftwidth=4             " Размер сдвига при нажатии на клавиши << и >>
set autoindent               " Копирует отступ от предыдущей строки
set smartindent              " Включаем 'умную' автоматическую расстановку отступов
set wrap                     " Включаем перенос строк
set linebreak                " Перенос строк по словам, а не по буквам
set showcmd                  " Включаем отображение выполняемой в данный момент команды в правом нижнем углу экрана
set hlsearch                 " Включаем подсветку выражения, которое ищется в тексте
set incsearch                " При поиске перескакивать на найденный текст в процессе набора строки
set nowrapscan               " Останавливать поиск при достижении конца файла
set ignorecase               " Игнорировать регистр букв при поиске
set nobackup                 " Отключаем создание бэкапов
set noswapfile               " Отключаем создание swap файлов
set fileencodings=utf-8,cp1251,koi8-r,cp866 " Список кодировок файлов для автоопределения
set visualbell               " Включает виртуальный звонок (моргает, а не бибикает при ошибках)
set whichwrap=b,s,<,>,[,],l,h " Перемещать курсор на следующую строку при нажатии на клавиши вправо-влево и пр.
set foldmethod=manual        " Метод фолдинга - вручную (для обычных файлов)

set keymap=russian-jcukenwin " Настраиваем переключение раскладок клавиатуры по <C-^>
set iminsert=0               " Раскладка по умолчанию - английская
set imsearch=0               " Раскладка по умолчанию - английская









""""""" Hotkeys """""""

" esc-esc-esc for exit without save
map <Esc><Esc><Esc> :q!<CR>

" Сохранить файл по <F2>
nmap <F2> :w!<CR>
imap <F2> <Esc>:w!<CR>
vmap <F2> <Esc>:w!<CR>
inoremap <F2> <c-o>:w<CR>

" undo on ctrl-z
imap <c-z> <Esc>u<CR>
inoremap <c-z> <c-o>u<CR>

" exit on Esc-0
map <Esc>0 :q<CR>
map <Esc>00 :q!<CR>
map <Esc>09 ZZ<CR>

" Ctrl-n NerdTree
map <C-n> :NERDTreeToggle<CR>

" Ctrl-a show all search results
map <c-a> :g//p<CR>

" VimCommander
noremap <silent> <F11> :cal VimCommanderToggle()<CR>

" Более привычные Page Up/Down, когда курсор остаётся в той же строке,
" а не переносится вверх/вниз экрана, как при стандартном PgUp/PgDown.
" Поскольку по умолчанию прокрутка по C-U/D происходит на полэкрана,
" привязка делается к двойному нажатию этих комбинаций.
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>
nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

" Ctrl-Space autocomplete Onmicomplete, отсюда - http://stackoverflow.com/questions/510503/ctrlspace-for-omni-and-keyword-completion-in-vim
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>


