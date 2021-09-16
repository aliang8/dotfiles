call plug#begin()
Plug 'preservim/NERDTree'
Plug 'sjl/gundo.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'preservim/NERDCommenter'
Plug 'wincent/ferret'
Plug 'BurntSushi/ripgrep'
Plug 'junegunn/fzf'
Plug 'easymotion/vim-easymotion'
Plug 'Asheq/close-buffers.vim'
Plug 'ycm-core/YouCompleteMe'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'SirVer/ultisnips'
Plug 'ervandew/supertab'
Plug 'Konfekt/FastFold'
Plug 'hesselbom/vim-hsftp'
call plug#end()

set number
syntax on
set tabstop=2
set autoindent
set noexpandtab
set softtabstop=2
set cursorline
set nosmarttab
set nopreserveindent
set nocopyindent

" search
set incsearch
set hlsearch
set ignorecase
set incsearch
set smartcase

set complete-=i

syntax enable

set laststatus=2
set title

" color
colo gruvbox 
set background=dark
" let g:seoul256_background = 233

" folding
set nofoldenable
set foldlevelstart=10
set foldmethod=indent

nnoremap <space> za

" move vertically
nnoremap j gj
nnoremap k gk
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>
" highlight last inserted text
nnoremap gV `[v`]

" leader is comma
let mapleader=","       
" jk is escape
inoremap jk <esc>
inoremap kj <esc>

nnoremap <leader>w :w!<CR>
nnoremap <leader>q :q!<CR>

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>a :Ag

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
nnoremap <leader>b :CtrlPBuffer<cr>

" Split screen
nnoremap <silent> <Leader>s :split<CR>
nnoremap <silent> <Leader>v :vsplit<CR>
" nnoremap <silent> <Leader>q :close<CR>

" Navigate split screen
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Tabs
nnoremap <silent> <Leader>t :$tabnew<CR>

" Edit vimrc
nnoremap <Leader>ve :e $MYVIMRC<CR>
" Reload vimr configuration file
nnoremap <Leader>vr :source $MYVIMRC<CR>

" Commenting code
vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> -# :s/^#//<cr>:noh<cr>

" Ferret
nmap <leader>/ <Plug>(FerretAck)
nmap <leader>* <Plug>(FerretAckWord)
nmap <leader>r <Plug>(FerretAcks)

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Easy motion
"<Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)
" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Close buffer
nnoremap <silent> <C-q> :Bdelete menu<CR>
nnoremap <silent> Q     :Bdelete menu<CR>

" YCM
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" Latex
let g:tex_flavor='latex'
let g:tex_indent_brace=0
autocmd Filetype tex setlocal expandtab

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]
filetype plugin indent on

set clipboard=unnamedplus

