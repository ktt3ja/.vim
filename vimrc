"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vundle settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-commentary'

filetype plugin indent on

syntax on
set background=light
colorscheme Tomorrow-Night-Eighties

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indentation
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
set shiftround
set autoindent

autocmd FileType make set noexpandtab

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => No backup files
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set nowritebackup
set noswapfile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search and highlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase
set smartcase
set incsearch
set hlsearch
set showmatch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Miscellaneous
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set hidden
set showcmd
set number
set listchars=tab:▸\ ,eol:¬

function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction
autocmd BufWritePre * call TrimWhiteSpace()

" source the vimrc file after saving it
augroup reload_vimrc
	autocmd!
	autocmd BufWritePost $MYVIMRC source %
augroup END
