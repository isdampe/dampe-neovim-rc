call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'jiangmiao/auto-pairs'

" Syntax
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'JulesWang/css.vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'leafgarland/typescript-vim'

" Themes
Plug 'https://github.com/phanviet/vim-monokai-pro.git'
Plug 'https://github.com/rafalbromirski/vim-aurora'
Plug 'vim-airline/vim-airline-themes'
Plug 'safv12/andromeda.vim'
Plug 'ayu-theme/ayu-vim'

call plug#end()

filetype plugin indent on
syntax enable

" Optimizations
set updatetime=300
set shortmess+=c
set tabstop=4
set shiftwidth=4
set nowrap
set smarttab
set number
set showcmd
set dir=/tmp
set colorcolumn=80
set wildmenu


" Persistant undo.
silent !mkdir -p /tmp/vim-undo
set undofile
set undodir=/tmp/vim-undo

" Rewrite as sudo
cnoremap w!! w !sudo tee > /dev/null %

"Searching
set incsearch
set hlsearch

"Mouse
set ttyfast
set mouse=a

" Key bindings
nnoremap <silent> <c-p> :FZF<CR>
nnoremap <silent> <Esc><Esc> :nohl<CR><C-l>
nnoremap <silent> <c-s-CR> :split \| term<CR>i
nnoremap <silent> <c-\> :NERDTreeToggle<CR>

" PHP
let g:PHP_vintage_case_default_indent = 1
let g:PHP_noArrowMatching = 1

set termguicolors
let ayucolor="dark"
colorscheme ayu

















" js
let g:javascript_plugin_jsdoc = 1






" coc.nvim
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

