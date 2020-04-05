call plug#begin('~/.local/share/nvim/plugged')
" Use release branch
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" status dibawah biar keren Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline'
" tema untuk vim-airline
Plug 'vim-airline/vim-airline-themes'
" plugin untuk commenting
Plug 'scrooloose/nerdcommenter'
" tema gruvbox
Plug 'morhetz/gruvbox'
" utk nampilin file dlm folder
Plug 'scrooloose/nerdtree'
" untuk icon di nerdtree
Plug 'ryanoasis/vim-devicons'
"fuzzy file finding
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" surround vim
Plug 'tpope/vim-surround'
" easymotion
Plug 'easymotion/vim-easymotion'
" onedark theme
Plug 'joshdick/onedark.vim'
" file manager
Plug 'vifm/vifm'
call plug#end()

"#### KONFIGURASI SAYA

" basic
set encoding=UTF-8
syntax on
set number
set relativenumber
set notermguicolors
" tabspace = 2
set tabstop=2 shiftwidth=2 expandtab
" auto indent
set ai
set si

"enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'
" enable coc in status
let g:airline#extensions#coc#enabled = 1

"enable airline fonts
let g:airline_powerline_fonts = 1
:let g:airline_theme='onedark'
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-yank', 'coc-prettier', 'coc-highlight', 'coc-lists', 'coc-snippets', 'coc-vetur']
colorscheme onedark

"mapping
:let mapleader = ";"
" prev tab
nnoremap <S-h> :tabp<cr>
" next tab
nnoremap <S-l> :tabn<cr>
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
" toggle nerdtree
nnoremap <silent> <expr> <F3> g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"
" open fzf files
nnoremap <C-p> :Files<cr>
" format document with coc-prettier
nnoremap <C-S-i> :CocCommand prettier.formatFile<cr>
