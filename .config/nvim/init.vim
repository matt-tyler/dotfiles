
set nocompatible
filetype off

set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'valloric/youcompleteme'
Plugin 'sjl/gundo.vim'
Plugin 'fatih/vim-go'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'majutsushi/tagbar'
Plugin 'antoyo/vim-licenses'

" vim-fugitive
" vim-gitgutter
" gitv

call vundle#end()

filetype plugin indent on
syntax on
set background=dark
colorscheme NeoSolarized

set number

set foldmethod=indent
set foldlevel=99

set colorcolumn=80

set backspace=indent,eol,start

set showcmd

set tabstop=4

map <leader>c <plug>NERDCommenterAlignLeft
map <leader>u <plug>NERDCommenterUncomment
map <leader>n :NERDTreeToggle<CR>
map <leader>g :GundoToggle<CR>
map <leader>t :CtrlP<CR>
map <leader>m :MiniBufExpl<CR>
nmap <F8> :TagbarToggle<CR>

let g:ctrlp_max_files=0

let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

autocmd Filetype yaml setlocal ts=2 sts=2 sw=2 expandtab

" g:licenses_authors_name = 'Tyler, Matt <me@matthewtyler.io>'
