" Basics und Panthogen autloader
execute pathogen#infect()
syntax on
filetype plugin indent on
set number
let mapleader=","
set ts=2 sts=2 sw=2 expandtab

" setzt den Zahlenmodus auf decimal für Zahlen mit führender Null
set nrformats= 

" Airline parameter pameter
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1

" Git Gutter
" let g:gitgutter_realtime = 1
" let g:gitgutter_eager = 1
highlight clear SignColumn

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬

" Edit tricks ; edit files relative 
map <leader>ew :e <C-R>=expand("%:p:h") . "/" <CR>
map <leader>es :sp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>ev :vsp <C-R>=expand("%:p:h") . "/" <CR>
map <leader>et :tabe <C-R>=expand("%:p:h") . "/" <CR>

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Shortcut to edit $MYVIMRC
nmap <leader>v :tabedit $MYVIMRC<CR>
