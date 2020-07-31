" Syntax settings
if has("syntax")
    syntax on
    filetype on
endif

"Vundle begin
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Plugins
Plugin 'gmarik/Vundle.vim'
Plugin 'The-NERD-tree'
Plugin 'vim-airline/vim-airline'
Plugin 'beigebrucewayne/Turtles'
"Plugin 'scrooloose/syntastic'
"Plugin 'Valloric/YouCompleteMe'

"Vundle end
call vundle#end()
filetype plugin on

"Indentation settings
set smartindent
set autoindent
set cindent
set smarttab
set expandtab
set shiftwidth=4
set ts=4
set wrap
set history=256

"GUI
set nu
set ruler
set background=dark

"Search setting
set showmatch
set hlsearch
set incsearch
set smartcase

"Colour scheme
color turtles

"etc
set title
set wildmenu
set wildmode=list:longest,full
set mouse=a
set cursorline
set ru
set laststatus=2

" File
set autowrite
set autoread

"ctags
set tags=./tags,~/Projects/Container/gem5/tags,~/Projects/Container/kernel/linux-4.8.13/tags

"cscope
set csprg=/usr/bin/cscope
set csto=0
set cst
set nocsverb
if filereadable("./cscope.out")
    cs add cscope.out
else
    cs add /usr/src/linux/cscope.out
endif
set csverb

" Keyword highlight (TODO, FIXME, NOTE, etc.)
if has('autocmd') && v:version > 701
    augroup Todo
        autocmd!
        autocmd Syntax * call matchadd(
                    \ 'Debug',
                    \ '\v\W\zs<(FIXME|BUG|HACK|XXX)>'
                    \ )
        autocmd Syntax * call matchadd(
                    \ 'ToDo',
                    \ '\v\W\zs(NOTE|INFO|IDEA|TODO|CHANGED|TRICKY|ATTN|DEBUG)>'
                    \ )
    augroup END
endif

