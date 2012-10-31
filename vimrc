call pathogen#infect()
call pathogen#helptags()

" Set file type stuff to on
filetype on
filetype plugin on
filetype indent on

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4

" Set the search scan to wrap lines
set wrapscan

" Turn on line numbers
set number

" Set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase

" Set the forward slash to the the default slash
set shellslash

" Make command line 2 lines
set ch=2

" Set visual bell
set vb

" Allow backspacing over indent, eol, and the start of an insert
set backspace=2

" Make sure that unsaved buffers that are to be put in the background are
" allowed to go in there (ie. the "must save first" error doesn't come up)
set hidden

" Make the cw and like commands put the $ at the end instead of just deleting
" the text and replacing it
""set cpoptions=ces$

" Set the status line the way I like it
set stl=%f\ %m\ %r\ Line:%l/%L[%p%%]\ Col:%c\ Buf:%n\ [%b][0x%B]

" tell VIM to always put a status line in, even if there is only one window
set laststatus=2

" Don't update the display while executing macros
set lazyredraw

" Show the current command in the lower right corner
set showcmd

" Show the current mode
set showmode

"Switch the syntax highlighting
syntax on

" Hide the mouse pointer while typing
set mousehide

" Set the GUI cursor to look nice
set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=ve:ver35-Cursor
set guicursor+=o:hor50-Cursor
set guicursor+=i-ci:ver25-Cursor
set guicursor+=r-cr:hor20-Cursor
set guicursor+=sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

" Set the GUI options the way I like
set guioptions=ac

" This is the timeout used while waiting for the user to input on a multi-key
" macro or while just sitting and waiting for another key to be pressed
" measured in miliseconds
"
" ie. for the ",d" command, there is a "timroutlen" wait period between the
" 	"," key and the "d" key. If the "d" key isn't pressed before the
"	timeout expires, one of two things happens: The "," command is
"	executed if there is one (which there isn't) or the command aborts
set timeoutlen=500

" Kepp some stuff in the history
set history=100

" When the page scrolls keep the cursor 8 lines from the top and bottom
set scrolloff=8

" Allow the cursor to go in to "invalid" places
set virtualedit=all

" Make command line completion good
set wildmenu

" When completing by tag, show the whole tag, not the function name
set showfulltag

" Set text width to be 120 chars
set textwidth=120

" get rid of the silly characters in window separators
set fillchars=""

" Turn tab into spaces
" unless editing a make file
let _curfile = expand("%:t")
if _curfile =~ "Makefile" || _curfile =~ "makefile" || _curfile =~ ".*\.mk"
    set noexpandtab
else
    set expandtab
endif

" Add ignorance of white space to diff
set diffopt+=iwhite

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Toggle paste mode
nmap <silent> ,p :set invpaste<CR>:set paste?<CR>

" cd to the directory containing the file in the buffer
nmap <silent> ,cd :lcd %:h<CR>
nmap <silent> ,md :!mkdir -p %p:h<CR>

" Turn off stupid highlight search
nmap <silent> ,n :set invhls<CR>:set hls?<CR>

" Map CTRL-E to do what ',' used to do
nnoremap <c-e> ,
vnoremap <c-e> ,

" Buffer commands
noremap <silent> ,bd :bd<CR>

" Edit the vimrc file
nmap <silent> ,ev :e $MYVIMRC<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>

" Syntax coloring lines that are too long just slows down the world
set synmaxcol=2048

"-------------------------------------
"Set up the window colors and size
"-------------------------------------
set background=dark
colorscheme solarized

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

:nohls
