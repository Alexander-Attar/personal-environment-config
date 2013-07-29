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

set ruler " show line number and column number
set ignorecase " for searches
set pastetoggle=<F8> " F8 to turn on block paste mode
set backspace=2 " make backspace work like most other apps
inoremap jj <esc> " double hit j to enter control mode
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

" Nerd Tree
map <C-n> :NERDTreeToggle<CR>

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

let NERDTreeQuitOnOpen = 1

