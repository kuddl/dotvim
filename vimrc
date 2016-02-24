" Panthogen autloader
execute pathogen#infect()

" Basics
syntax on
filetype plugin indent on
set number
set updatetime=750
let mapleader=","
set ts=2 sts=2 sw=2 expandtab
set noswapfile

" setzt den Zahlenmodus auf decimal für Zahlen mit führender Null
set nrformats= 

" Airline parameter
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'

" Git Gutter
" let g:gitgutter_realtime = 1
" let g:gitgutter_eager = 1
highlight clear SignColumn

" Term Farben
if &term =~ "xterm"
  " 256 colors
  let &t_Co = 256
  " restore screen after quitting
  let &t_ti = "\<Esc>7\<Esc>[r\<Esc>[?47h"
  let &t_te = "\<Esc>[?47l\<Esc>8"
  if has("terminfo")
    let &t_Sf = "\<Esc>[3%p1%dm"
    let &t_Sb = "\<Esc>[4%p1%dm"
  else
    let &t_Sf = "\<Esc>[3%dm"
    let &t_Sb = "\<Esc>[4%dm"
  endif
endif

" Shortcut to rapidly toggle `set list` — Lineendings
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Edit tricks ; edit files relative 
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Source the vimrc file after saving it
augroup autosourcing
  autocmd!
  autocmd bufwritepost .vimrc source %
augroup END

" Shortcut to edit $MYVIMRC
nmap <leader>rc :e $MYVIMRC<CR>
