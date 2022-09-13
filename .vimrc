"plugins
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
    Plug 'zacanger/angr.vim'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'mkitt/tabline.vim'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'preservim/nerdtree'
call plug#end()

"set colorcheme
colorscheme angr

"fzf search shortcuts
map <C-F> :Ag<cr>
map <C-J> :Files<cr>

"settings for vim-indent-guides
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1

"tab
set tabstop=4
set shiftwidth=0
set expandtab

"trail spaces
set list
set listchars=trail:~

"show line number
set number

"go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"show posible matches for command line
set wildmenu

"always show status line
set laststatus=2

"search
set incsearch
set hlsearch
set ignorecase
set smartcase

"noh - no highlight
map <esc> :noh <CR>

"somehow it solves vim starting in replace mod problem
nnoremap <esc>^[ <esc>^[

