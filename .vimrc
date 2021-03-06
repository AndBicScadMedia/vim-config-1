""" Dan Turkel
""" .VIMRC

"" MUST-BE-FIRST THINGS

" no compatibility mode
set nocompatible
filetype off

"" END MUST-BE-FIRST THINGS

"" BUNDLE MANAGEMENT

" vundle setup
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'

" My Bundles:
Bundle 'othree/html5.vim'
Bundle 'ervandew/supertab'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-endwise'
Bundle 'git://git.code.sf.net/p/vim-latex/vim-latex'
Bundle 'tpope/vim-markdown'
Bundle 'mhinz/vim-startify'

"" END BUNDLE MANAGEMENT

"" FUNCTION DEFINITIONS

" Markdown Preview
function! s:setupMarkup()
  nnoremap <leader>p :silent !open -a Marked.app '%:p'<cr>
endfunction

au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

" Word Count
function! WC()
    let filename = expand("%")
    let cmd = "detex " . filename . " | wc -w | tr -d [:space:]"
    let result = system(cmd)
    echo result . " words"
endfunction

command WC call WC()

" Center Buffer
function! CenterBuf()
    vnew
    wincmd l
    rightbelow vnew
    wincmd h
    wincmd =
endfunction

command CB call CenterBuf()

"" END FUNCTION DEFINITIONS

"" PLUGIN SETTINGS

" ensures that indentation plugins load based on filetype 
filetype plugin indent on

"" airline settings
" remove seperators
let g:airline_left_sep=''
let g:airline_right_sep=''
" remove unused modes
let g:airline_enable_branch=0
let g:airline_enable_syntastic=0
" further customization
" disable whitespace/tabs detection
let g:airline_detect_whitespace=0
" set third section to filename
let g:airline_section_b="%f"
" empty third and fourth sections
let g:airline_section_c=""
let g:airline_section_x=""
" put filetype in fifth section
let g:airline_section_y="%Y"

"" zencoding settings
" remap zen-leader-key
let g:user_emmet_leader_key = '<c-e>'

"" ctrlp settings
" multi-session caching
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp'

"" latex settings
" stop inserting "<++>"s
let g:Imap_UsePlaceHolders = 0
" use latex to compile
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
" let g:Tex_CompileRule_pdf = 'xelatex --interaction=nonstopmode $*'
" grep always generates a file-name to fix compatibility bug with vim-latex
set grepprg=grep\ -nH\ $*
" tex assumed to be latex
let g:tex_flavor='latex'
" always compile to pdf
let g:Tex_DefaultTargetFormat='pdf'
" synctex
let g:Tex_ViewRule_ps = 'Preview'
let g:Tex_ViewRule_pdf = 'Skim'

"" supertab settings
" utilize vim's omnicomplete (disabled for now)
let g:SuperTabDefaultCompletionType = 'context'

"" END PLUGIN SETTINGS

""" GENERAL SETTINGS

"" statusline settings
" always show statusline
set laststatus=2
" blank statusline (old statusline, now replaced with airline)
"set statusline=\  
" append filename
"set statusline+=%t
" append filetype
"set statusline+=\ %y
" append flags (read-only/modified)
"set statusline+=\ %r%m
" right align
"set statusline+=\ %=
" append [current-line/num-lines,current-column]
"set statusline+=[%l/%L,%c]
" append percentage
"set statusline+=\ %P
" append trailing space
"set statusline+=\ 

" fold settings
set foldmethod=syntax
set foldnestmax=10
set nofoldenable
set foldlevel=1

"" scroll settings
" scroll padding by 5 lines
set so=5
" scroll to next row for wrap
nnoremap j gj
nnoremap k gk

"" appearance settings
" line numbers
set number
" highlight current line
set cursorline
" set colorscheme
syntax enable
if has("gui_running")
    colorscheme wombat 
else
    colorscheme wombat256mod
endif

" set font
if has('gui_running')
	set guifont=Inconsolata:h12
endif
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

"" behavioral settings
" don't assume the next line is a comment just because this one is
au FileType * setlocal formatoptions-=cro
" determine that the .vimrc file is a .vim file
au BufRead,BufNewFile *.vimrc set filetype=vim
" auto read outside changes
set autoread
" strip ruby trailing whitespace
autocmd BufWritePre *.rb :%s/\s\+$//e
" return to last edit position when opening files
autocmd BufReadPost * 
    \ if line("'\"") > 1 && line("'\"") <= line("$") | 
    \   exe "normal! g`\"" | 
    \ endif 
" allow buffers to be hidden even if they are modified
set hidden
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
" set backup directory if there's no version control
if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set writebackup " keep backups while file is open
  set nobackup " don't keep the backups after close file
  set backupdir=~/.vim/backup
  set directory=~/.vim/tmp
endif
" turn on spellcheck by default
set spell
" keep 700 lines of history
set history=700	
" show the cursor position all the time
set ruler
" show incomplete commands
set showcmd	
" do incremental searching
set incsearch		
" don't be case sensitive when searching
set ignorecase
" do be case sensitive if an upper-case letter is in the search
set smartcase
" allow mouse support 
if has('mouse')
  set mouse=a
endif
" set encoding
set encoding=utf8
" break lines at spaces
set linebreak
" >> and << move text 4 spaces
set shiftwidth=4
" tabs are just spaces
set expandtab
" tabs are 4 columns wide
set tabstop=4
" pressing tab in insert mode is 4 spaces
set softtabstop=4
" horizontal splits come below
set splitbelow
" see differences between current file and file it was loaded from
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		  \ | wincmd p | diffthis
endif

"" mappings
" map f9 to open spellcheck
map <F9> :setlocal spell! spelllang=en_us<CR>
" map f8 to spanish spellcheck
map <F8> :setlocal spell! spelllang=es<CR>
" easy vertical split control
set wmw=0
nmap <c-h> <c-w>h<c-w><Bar>
nmap <c-l> <c-w>l<c-w><Bar>
" navigate splits with control hjkl
nnoremap <C-Left> <C-w>h
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Right> <C-w>l
" disable arrow keys (currently turned off for tab completion compatibility)
" nnoremap <up> <nop>
" nnoremap <down> <nop>
" nnoremap <left> <nop>
" nnoremap <right> <nop>
" inoremap <up> <nop>
" inoremap <down> <nop>
" inoremap <left> <nop>
" inoremap <right> <nop>
" remap enter to clear highlighting
nnoremap <CR> :noh<CR>
" Don't use Ex mode, use Q for formatting
map Q gq
" remaps c-u to allow undo recover from accidental c-u
inoremap <C-U> <C-G>u<C-U>
" remap leader to comma
let mapleader = ","
" remap local leader to double backslash
let maplocalleader = "\\"

" miscellaneous
if has("autocmd")
  " Enable file type detection.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on
  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!
  augroup END
else
  set smartindent
  set autoindent		" always set autoindenting on
endif " has("autocmd")

""" END GENERAL SETTINGS
