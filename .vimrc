syntax on

set rnu
set nu
set incsearch
set nocompatible
set backspace=2
set smartindent
set tabstop=2 softtabstop=2
set hidden
set nowrap
set scrolloff=8
set colorcolumn=80
set signcolumn=yes
set cursorline
set nobackup
set nowritebackup
set cmdheight=2

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

set updatetime=50

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'valloric/youcompleteme'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter' 
Plug 'neoclide/coc.nvim'
Plug 'rhysd/vim-clang-format'

call plug#end()

let g:airline_theme="gruvbox"
colorscheme gruvbox
set background=dark

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let mapleader = " "

nnoremap <leader>n :NERDTreeFocus <CR>
nnoremap <leader>N :NERDTreeFocus <CR> :q <CR>
nnoremap <leader>dj :YcmCompleter GoTo <CR>

"" Coc



"" You complete me
""nnoremap <F2> :YcmCompleter RefactorRename 


"" GitGutter
nnoremap <leader>ggt :GitGutterToggle <CR>


"" Formaters
nnoremap <leader>ffd :ClangFormat <CR>

