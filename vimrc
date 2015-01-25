""
"" Thanks:
""   Gary Bernhardt  <destroyallsoftware.com>
""   Drew Neil  <vimcasts.org>
""   Tim Pope  <tbaggery.com>
""   Janus  <github.com/carlhuda/janus>
""

set nocompatible
set encoding=utf-8
set exrc              " load vimrc from current directory

call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on

runtime macros/matchit.vim  " enables % to cycle through `if/else/endif`

syntax enable
set background=dark
set t_Co=256
color vwilight
set synmaxcol=800           " don't try to highlight long lines

set nonumber    " line numbers aren't needed
set ruler       " show the cursor position all the time
set cursorline  " highlight the line of the cursor
set showcmd     " show partial commands below the status line
set shell=bash  " avoids munging PATH under zsh
let g:is_bash=1 " default shell syntax
set history=200 " remember more Ex commands
set scrolloff=3 " have some context around the current line always on screen

" make tab completion for files/buffers act like bash
set wildmode=longest,list
set wildmenu

" Allow backgrounding buffers without writing them, and remember marks/undo
" for backgrounded buffers
set hidden

" Auto-reload buffers when file changed on disk
set autoread

" Disable swap files; systems don't crash that often these days
set updatecount=0

" Make Vim able to edit crontab files again.
set backupskip=/tmp/*,/private/tmp/*"

"" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set expandtab                     " use spaces, not tabs
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
" Joining lines
if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j            " Delete comment char when joining commented lines
endif
set nojoinspaces                  " Use only 1 space after '.' when joining lines, not 2
" Indicator chars
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮
set showbreak=↪\ 
set sidescroll=5                  " minimum number of columns to scroll horizontally

"" Searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter
set gdefault                      " have :s///g flag by default on

" Time out on key codes but not mappings.
" Basically this makes terminal Vim work sanely.
set notimeout
set ttimeout
set ttimeoutlen=100

function! b:setupWrapping()
  setlocal wrap
  setlocal wrapmargin=2
  setlocal textwidth=80
  setlocal formatoptions+=ta
  setlocal formatoptions-=l
endfunction

if has("autocmd")
  " Avoid showing trailing whitespace when in insert mode
  au InsertEnter * :set listchars-=trail:•
  au InsertLeave * :set listchars+=trail:•

  " In Makefiles, use real tabs, not tabs expanded to spaces
  au FileType make set noexpandtab

  " Make sure all markdown files have the correct filetype set and setup wrapping
  au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,tex,txt} setf markdown | call b:setupWrapping()

  " Treat JSON files like JavaScript
  au BufNewFile,BufRead *.json setf javascript

  " https://github.com/sstephenson/bats
  au BufNewFile,BufRead *.bats setf sh

  " Remember last location in file, but not for commit messages.
  " see :help last-position-jump
  au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif

  " mark Jekyll YAML frontmatter as comment
  au BufNewFile,BufRead *.{md,markdown,html,xml,hbs} sy match Comment /\%^---\_.\{-}---$/

  " magic markers: enable using `H/S/J/C to jump back to
  " last HTML, stylesheet, JS or Ruby code buffer
  au BufLeave *.{erb,html}      exe "normal! mH"
  au BufLeave *.{css,scss,sass} exe "normal! mS"
  au BufLeave *.{js,coffee}     exe "normal! mJ"
  au BufLeave *.{rb}            exe "normal! mC"
endif

" don't use Ex mode, use Q for formatting
map Q gq

" clear the search buffer when hitting return
nnoremap <CR> :nohlsearch<cr>

" toggle the current fold
nnoremap <Space> za

let mapleader=","

" Make Vim use system clipboard for copy and paste
if $TMUX == ''
  set clipboard=unnamed
end

" expand %% to current directory in command-line mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=expand('%:h').'/'<cr>

nmap <leader>gl :CommandTFlush<cr>\|:CommandT lib<cr>
nmap <leader>f :CommandTFlush<cr>\|:CommandT<cr>
nmap <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

let g:CommandTMaxHeight=10
let g:CommandTMinHeight=2

" Use 'The Silver Searcher' instead of 'Ack' in ack.vim
let g:ackprg = 'ag --nogroup --nocolor --column'

" In command-line mode, C-a jumps to beginning (to match C-e)
cnoremap <C-a> <Home>

" ignore Rubinius, Sass cache files
set wildignore+=tmp/**,*.rbc,.rbx,*.scssc,*.sassc
" ignore Bundler standalone/vendor installs & gems
set wildignore+=bundle/**,vendor/bundle/**,vendor/cache/**
set wildignore+=node_modules/**,bower_components/**

" toggle between last open buffers
nnoremap <leader><leader> <c-^>

command! KillWhitespace :normal :%s/ *$//g<cr><c-o><cr>

" More intuitive splitting
set splitright
set splitbelow

" disable cursor keys in normal mode
map <Left>  :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up>    :echo "no!"<cr>
map <Down>  :echo "no!"<cr>

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

if has("statusline") && !&cp
  set laststatus=2              " always show the status bar
  set statusline=%f\ %m\ %r     " filename, modified, readonly
  set statusline+=%{fugitive#statusline()}
  set statusline+=\ %l/%L[%p%%] " current line/total lines
  set statusline+=\ %v          " current column
endif

nmap <leader>w :exec ":!~/bin/test  " . expand("%") . " " . line(".")<cr>
nmap <leader>t :exec ":!~/bin/test  " . expand("%")<cr>

" MULTIPURPOSE TAB KEY
" Indent if we're at the beginning of a line. Else, do completion.
function! InsertTabWrapper()
  let col = col('.') - 1
  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" Shortcut for running files
nmap <leader>r :exec ":!~/bin/run " . expand("%")<cr>

" Toggle 'a' in formatoptions
function! ToggleAutoFormat()
  if &fo=~"a"
    setlocal fo-=a
    echom "auto-format off"
  else
    setlocal fo+=a
    echom "auto-format on"
  endif
endfunction

" Shortuct for toggling 'a' in formatoptions
nmap <leader>a :call ToggleAutoFormat()<cr>

" Highlight 81's column
let &colorcolumn = "81"

" SplitJoin mapping
nmap <leader>j :SplitjoinJoin<cr>
nmap <leader>s :SplitjoinSplit<cr>

" Disable folding in Markdown files
let g:vim_markdown_folding_disabled=1

au BufNewFile,BufRead *.ejs set filetype=html
