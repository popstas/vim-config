filetype plugin on
filetype indent on



" color scheme
set background=dark
" let g:solarized_termcolors=256

" colorscheme monokai
" colorscheme twilight
" colorscheme solarized
" need to set solarized after plugins

" line numbers
set number

" mouse wheel, see :help mouse
set mouse=a

" esc-esc-esc for exit without save
map <Esc><Esc><Esc> :q!<CR>

" PowerLine
let g:Powerline_symbols = 'fancy'
set encoding=utf-8

" Сохранить файл по <F2>
nmap <F2> :w!<CR>
imap <F2> <Esc>:w!<CR>
vmap <F2> <Esc>:w!<CR>
inoremap <F2> <c-o>:w<CR>

"imap <c-z> <Esc>u<CR>
inoremap <c-z> <c-o>u<CR>

" exit on Esc-0
map <Esc>0 :q<CR>
map <Esc>00 :q!<CR>
map <Esc>09 ZZ<CR>

" Ctrl-n NerdTree
map <C-n> :NERDTreeToggle<CR>

" Ctrl-a show all search results
map <c-a> :g//p<CR>

" backspace fix - http://vim.wikia.com/wiki/Backspace_and_delete_problems
set backspace=indent,eol,start

" VimCommander
noremap <silent> <F11> :cal VimCommanderToggle()<CR>

"Отсюда - http://konishchevdmitry.blogspot.ru/2008/07/howto-vim.html
" Размер табуляции
set tabstop=4
" Размер сдвига при нажатии на клавиши << и >>
set shiftwidth=4
" Копирует отступ от предыдущей строки
set autoindent
" Включаем 'умную' автоматическую расстановку отступов
set smartindent
" Включаем подсветку синтаксиса
syntax on
" Включаем перенос строк
set wrap
" Перенос строк по словам, а не по буквам
set linebreak
" Включаем отображение выполняемой в данный момент команды в правом нижнем углу экрана.
" К примеру, если вы наберете 2d, то в правом нижнем углу экрана Vim отобразит строку 2d.
set showcmd
" Включаем отображение дополнительной информации в статусной строке
set statusline=%<%f%h%m%r%=format=%{&fileformat}\ file=%{&fileencoding}\ enc=%{&encoding}\ %b\ 0x%B\ %l,%c%V\ %P

" Включаем подсветку выражения, которое ищется в тексте
set hlsearch
" При поиске перескакивать на найденный текст в процессе набора строки
set incsearch
" Останавливать поиск при достижении конца файла
set nowrapscan
" Игнорировать регистр букв при поиске
set ignorecase

" Отключаем создание бэкапов
set nobackup
" Отключаем создание swap файлов
set noswapfile
"" Все swap файлы будут помещаться в эту папку
"set dir=~/.vim/swp

" Список кодировок файлов для автоопределения
set fileencodings=utf-8,cp1251,koi8-r,cp866

" Включает виртуальный звонок (моргает, а не бибикает при ошибках)
set visualbell

" Перемещать курсор на следующую строку при нажатии на клавиши вправо-влево и пр.
set whichwrap=b,s,<,>,[,],l,h

" Метод фолдинга - вручную (для обычных файлов)
set foldmethod=manual

" Настраиваем переключение раскладок клавиатуры по <C-^>
set keymap=russian-jcukenwin
" Раскладка по умолчанию - английская
set iminsert=0
set imsearch=0
" Highlight lCursor guifg=NONE guibg=Cyan


" Более привычные Page Up/Down, когда курсор остаётся в той же строке,
" а не переносится вверх/вниз экрана, как при стандартном PgUp/PgDown.
" Поскольку по умолчанию прокрутка по C-U/D происходит на полэкрана,
" привязка делается к двойному нажатию этих комбинаций.
nmap <PageUp> <C-U><C-U>
imap <PageUp> <C-O><C-U><C-O><C-U>
nmap <PageDown> <C-D><C-D>
imap <PageDown> <C-O><C-D><C-O><C-D>

" Переключение раскладок и индикация выбранной
" в данный момент раскладки.
" -->
	" Переключение раскладок будет производиться по <C-F>
	"
	" При английской раскладке статусная строка текущего окна будет синего
	" цвета, а при русской - зеленого.

	function MyKeyMapHighlight()
	    if &iminsert == 0
	        hi StatusLine ctermfg=DarkBlue guifg=DarkBlue
	    else
	        hi StatusLine ctermfg=DarkGreen guifg=DarkGreen
	    endif
	endfunction

	" Вызываем функцию, чтобы она установила цвета при запуске Vim'a
	call MyKeyMapHighlight()

	" При изменении активного окна будет выполняться обновление
	" индикации текущей раскладки
	au WinEnter * :call MyKeyMapHighlight()

	cmap <silent> <C-F> <C-^>
	imap <silent> <C-F> <C-^>X<Esc>:call MyKeyMapHighlight()<CR>a<C-H>
	nmap <silent> <C-F> a<C-^><Esc>:call MyKeyMapHighlight()<CR>
	vmap <silent> <C-F> <Esc>a<C-^><Esc>:call MyKeyMapHighlight()<CR>gv
" <--











" Ctrl-Space autocomplete Onmicomplete, отсюда - http://stackoverflow.com/questions/510503/ctrlspace-for-omni-and-keyword-completion-in-vim
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>




" From highligts


" begin of Vundle include
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'risbra/csv.vim'
Plugin 'kien/ctrlp.vim'
" Plugin 'mru'
Plugin 'scrooloose/nerdtree'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'scrooloose/syntastic' " syntax check
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
" Plugin 'taglist'
" Plugin 'joonty/vdebug'
Plugin 'lpenz/vimcommander' " http://habrahabr.ru/post/137170/
Plugin 'mhinz/vim-startify' " startup window
Plugin 'tpope/vim-surround'
" Plugin 'wakatime/vim-wakatime'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Markdown'

" Plugin 'daylerees/colour-schemes', {'rtp': 'vim/'}



" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" need to set solarized after plugins
colorscheme solarized
