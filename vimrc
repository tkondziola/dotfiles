set nocompatible
set runtimepath=~/.vim,$VIMRUNTIME

" display line and column number
set ruler
" line number
set number
set showcmd
set showmode
" check spell
set spell
" check spellsuggest
set spellsuggest=4

" search
set incsearch
set ignorecase
set smartcase
set hlsearch

set cursorline
set shortmess+=I
set statusline+=File:%f\ Filetype:%Y\ Format:%{&fileformat}\ Lines:%L\ Hex:%B 
hi statusline guibg=#222222 guifg=#000000

" files operation
set nobackup
set noswapfile
set backspace=indent,eol,start
set autowrite
set autoread

" text operation
set wrap
set textwidth=119
set formatoptions=cqn1
set linebreak

" indent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

" colorscheme
colorscheme molokai

" mapping TagbarToggle functionality
nmap <F8> :TagbarToggle<CR>
" mapping NERD Tree functionality
map <C-n> :NERDTreeToggle<CR>
" mapping navigation between buffers 
map <C-Left> <ESC>:bp<CR>
map <C-Right> <ESC>:bn<CR>

" VIM-GO
"let g:go_disable_autoinstall = 0 
"let g:neocomplete#enable_at_startup = 1
"let g:tagbar_type_go = {  
"    \ 'ctagstype' : 'go',
"    \ 'kinds'     : [
"        \ 'p:package',
"        \ 'i:imports:1',
"        \ 'c:constants',
"        \ 'v:variables',
"        \ 't:types',
"        \ 'n:interfaces',
"        \ 'w:fields',
"        \ 'e:embedded',
"        \ 'm:methods',
"        \ 'r:constructor',
"        \ 'f:functions'
"    \ ],
"    \ 'sro' : '.',
"    \ 'kind2scope' : {
"        \ 't' : 'ctype',
"        \ 'n' : 'ntype'
"    \ },
"    \ 'scope2kind' : {
"        \ 'ctype' : 't',
"        \ 'ntype' : 'n'
"    \ },
"    \ 'ctagsbin'  : 'gotags',
"    \ 'ctagsargs' : '-sort -silent'
"\ }

" VIM-NOTES
"let g:notes_directories = ['~/Workspace/private/repos/migration-oldlaptop']
"let g:notes_suffix = '.txt'

" first, enable status line always
set laststatus=2
"
" " now set it up to change the status line based on mode
if version >= 700 
   au InsertEnter * hi StatusLine term=reverse ctermfg=23 ctermbg=15 gui=bold guibg=#eea040 guifg=#222222
   au InsertLeave * hi StatusLine term=reverse ctermfg=0  ctermbg=15 gui=reverse guibg=#eea040 guifg=#222222
endif

" abbrevation
iabbrev me    Tomasz A. Kondziola
iabbrev email tkondziola@gmail.com

" key bindings for templates navigation
"autocmd BufNewFile *.go 0r ~/.vim/templates/golang.tpl
"autocmd BufNewFile *.py 0r ~/.vim/templates/python.tpl
"nnoremap <c-j> /<+.\{1,}+><cr>c/+>/e<cr>
"inoremap <c-j> <Esc>/<+.\{1,}+><cr>c/+>/e<cr>

autocmd FileType python setlocal completeopt-=preview
