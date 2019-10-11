set nocompatible

" Vundle
""""""""

" Enable Vundle for easy plugin management
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Bundle 'christoomey/vim-tmux-navigator'
Plugin 'flazz/vim-colorschemes'
Bundle 'FuzzyFinder'
Bundle 'junegunn/fzf.vim'
Bundle 'L9'
call vundle#end()

" Settings
""""""""""

" General
let mapleader = "," " Remap the leader key
let g:mapleader = ","
set number " Show line numbers by default
filetype off

" Tabs and tab sizes
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Search options
set incsearch
set ignorecase
set smartcase
set hlsearch

" Ensure copy/paste works between Vim and system clipboard
set clipboard=unnamed

" Ignore these file types
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Enable fzf fuzzy-finding
set rtp+=~/.fzf
filetype plugin indent on

" Color scheme
syntax enable
" let g:onedark_termcolors=256
let g:onedark_terminal_italics=1
let g:onedark_hide_endofbuffer=1
set background=dark
colorscheme onedark

" Key bindings
""""""""""""""

" Toggle line numbers
nmap \l :setlocal number!<CR>

" Enter paste mode
nmap \o :set paste!<CR>

" Make j and k move up a single row, rather than around
" wrapped lines.
nmap j gj
nmap k gk

" Toggle search highlighting
nmap <Leader>/ :nohlsearch<CR>

" Lists open buffers with numbers for quick switching
" nmap <Leader>b :ls<CR>:b

" Quickly toggle next and previous open buffers
nmap <C-n> :bnext<CR>
nmap <C-p> :bprev<CR>

nmap <Leader>f :FufFile **/<CR>
nmap <Leader>b :FufBuffer<CR>
nmap <Leader>t :FufTaggedFile<CR>

" Quickly open CtrlP
nmap ; :CtrlPBuffer<CR>
nmap ' :CtrlP<CR>

" Quickly open NERDTree
nmap <Leader>e :NERDTreeToggle<CR>

" Quickly toggle line wrapping on and off
nmap \w :setlocal wrap!<CR>:setlocal wrap?<CR>

" Make saving and closing buffers way easier
nmap <Leader>w :w!<CR>
nmap <Leader>q :bd<CR>
nmap <Leader>Q :q<CR>

" Exit insert mode via Ctrl-C, "jk", or "kj"
noremap <C-c> <Esc>
inoremap jk <esc>
inoremap kj <esc>

" Plugins
"""""""""

" NerdTree customization
let NERDTreeShowBookmarks = 1
let NERDTreeChDirMode = 2

" CtrlP Customization
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions = ['line']
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend|sass-cache)$|(^|[/\\])\.(hg|git|sass-cache|svn|bzr)($|[/\\])|__init__\.py'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_show_hidden = 1

" FuzzyFinder customization
let g:fuf_file_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|jpg|jpeg|png|bmp|gif)$|(^|[/\\])(\.git|node_modules)($|[/\\])'
let g:fuf_dir_exclude = '\v(^|[/\\])(\.git|node_modules)($|[/\\])'

" Functions
"""""""""""

" Strips all trailing whitespace from a file
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" Automatically strips all whitespace on save
autocmd BufWritePre *.js,*.scss,*.css :call <SID>StripTrailingWhitespaces()
