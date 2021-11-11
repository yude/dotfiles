" Show line number
set number

" Change keybind for rectangle selection
nmap <C-v><C-v>

set bs=2
set virtualedit=block
set ambiwidth=double
set ignorecase
set smartcase
set wrapscan
set hlsearch

set noerrorbells
set shellslash
set showmatch matchtime=1
set cmdheight=2
set laststatus=2
set showcmd
set display=lastline
set history=10000
hi Comment ctermfg=3
set expandtab
set mouse=a
set nrformats=

augroup MyXML
  autocmd!
  autocmd Filetype xml inoremap <buffer> </ </<C-x><C-o>
  autocmd Filetype html inoremap <buffer> </ </<C-x><C-o>
augroup END

if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif
