set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rails'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'thoughtbot/vim-rspec'
Plugin 'jlanzarotta/bufexplorer'
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap
set runtimepath^=~/.vim/bundle/ctrlp.vim
set autowrite
set autowriteall
set modifiable
set number
" let g:qb_hotkey = "<C-b>"
nnoremap <C-b> :buffers<CR>:buffer<Space>
let mapleader = ","
nmap <F8> :TagbarToggle<CR>
nmap <F2> :NERDTree<CR>
nmap <F5> :CtrlPBuffer<CR>
set encoding=utf-8
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
let g:auto_save = 1

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

map <Leader>b :call BufExplorer()<CR>

let g:rspec_runner = "os_x_iterm2"
let g:rspec_command = "!clear && bundle exec rspec {spec}"
set mouse=a

" Set split separator to Unicode box drawing character
set encoding=utf8
set fillchars=vert:│

" Override color scheme to make split the same color as tmux's default
autocmd ColorScheme * highlight VertSplit cterm=NONE ctermfg=Green ctermbg=NONE

