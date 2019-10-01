let g:go_version_warning = 0

" configuration for PEP8
au BufNewFile,BufRead *.py
            \ set tabstop=4    |                  
            \ set softtabstop=4|
            \ set shiftwidth=4 |
            \ set textwidth=79 |
            \ set expandtab    |
            \ set autoindent   |
            \ set fileformat=unix

" for python
syntax on
filetype plugin indent on 
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
let g:python_highlight_all = 1

" Send line to another pane
map <C-c><C-c> :SlimuxREPLSendLine<CR>
vmap <C-c><C-c> :SlimuxREPLSendSelection<CR>
let g:slimux_select_from_current_window=1
let g:slimux_python_ipython=1

" Tagbar
nmap <F8> :TagbarToggle<CR>

" Jedi-vim
let g:jedi#popup_on_dot = 0

" UndoTree
nnoremap <F5> :UndotreeToggle<cr>

" Colorscheme
colorscheme default
highlight Visual cterm=NONE ctermbg=gray
hi Search cterm=NONE ctermfg=DarkRed ctermbg=LightGreen
hi Folded ctermbg=242
hi FoldColumn ctermbg=242
set foldcolumn=1

