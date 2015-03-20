function UsePEP8()
  setlocal tabstop=4
  setlocal shiftwidth=4
  setlocal formatoptions=t,c
  highlight ExtraWhiteSpace ctermbg=red guibg=red
  match ExtraWhiteSpace /\s\+$/
endfunction

"set control-c to copy to global clipboard
vmap <C-C> "+y
set clipboard+=unnamed

"show line number and column number
set ruler

"for searches
set ignorecase

"F8 to turn on block paste mode
set pastetoggle=<F8>

"make backspace work like most other apps
set backspace=2

"double hit j to enter control mode
inoremap jj <esc>

set smartindent
set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

set formatoptions=l
set lbr
if has("mouse")
    set mouse=a
endif
set ttymouse=xterm2

set noswapfile
set nobackup

autocmd Filetype python call UsePEP8()
autocmd Filetype make setlocal noexpandtab

"js syntax highlighting for JSON files
autocmd Filetype json set syntax=javascript

call pathogen#infect()

"Nerd Tree
map <C-n> :NERDTreeToggle<CR>

"Show hidden files in NerdTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

set background=dark
