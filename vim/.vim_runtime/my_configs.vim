"function! InsertStatuslineColor(mode)
  "if a:mode == 'i'
    "hi statusline guibg=Cyan ctermfg=6 guifg=Black ctermbg=0
  "elseif a:mode == 'r'
    "hi statusline guibg=Purple ctermfg=5 guifg=Black ctermbg=0
  "else
    "hi statusline guibg=DarkRed ctermfg=1 guifg=Black ctermbg=0
  "endif
"endfunction

"au InsertEnter * call InsertStatuslineColor(v:insertmode)
"au InsertLeave * hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

"" default the statusline to green when entering Vim
"hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

"" Formats the statusline
"set statusline=%f                           " file name
"set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
"set statusline+=%{&ff}] "file format
"set statusline+=%y      "filetype
"set statusline+=%h      "help file flag
"set statusline+=%m      "modified flag
"set statusline+=%r      "read only flag

"" Puts in the current git status
    "if count(g:pathogen_disabled, 'Fugitive') < 1   
        "set statusline+=%{fugitive#statusline()}
    "endif

"" Puts in syntastic warnings
    "if count(g:pathogen_disabled, 'Syntastic') < 1  
        "set statusline+=%#warningmsg#
        "set statusline+=%{SyntasticStatuslineFlag()}
        "set statusline+=%*
    "endif

"set statusline+=\ %=                        " align left
"set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
"set statusline+=\ Col:%c                    " current column
"set statusline+=\ Buf:%n                    " Buffer number
"set statusline+=\ [%b][0x%B]\               " ASCII and byte code under cursor

set background=dark
colorscheme solarized

" configuration for PEP8
au BufNewFile,BufRead *.py
            \ set tabstop=4    |                  
            \ set softtabstop=4|
            \ set shiftwidth=4 |
            \ set textwidth=79 |
            \ set expandtab    |
            \ set autoindent   |
            \ set fileformat=unix

map <C-c><C-c> :SlimuxREPLSendLine<CR>
vmap <C-c><C-c> :SlimuxREPLSendSelection<CR>
let g:slimux_select_from_current_window=1
let g:slimux_python_ipython=1
