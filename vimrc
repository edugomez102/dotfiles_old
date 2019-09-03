" Colors
colorscheme codedark
syntax enable

" Spaces Tabs
"set expandtab
"filetype plugin indent on
set smartindent
set smarttab "no seguro de esto e
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
"set expandtab

" UI Config
set number
set wildmenu
set showcmd
set cursorline
set showmatch 
set title

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Performance options
set lazyredraw

" Search options
set hlsearch
set incsearch
set smartcase

" Buffer options
set hid

" With a MAP LEADER it's possible to do extra key combinations
let mapleader = ","

" like <leader>w saves the current file
" Fast saving
nmap <leader>w :w!<cr>
" Remaps con <leader>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>
" Close the current buffer
map <leader>bd :bdelete<cr>:tabclose<cr>gT

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>t<leader> :tabnext<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/


" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Plugin de la barra esa
set laststatus=2
set noshowmode
set ttimeoutlen=50

" Plugin toggle comment
xnoremap <C-\> gc
"autocmd FileType apache setlocal commentstring=#\ %s

" Plugin de highlight C++
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" Default highlight java
" let java_comment_strings=1 
let java_highlight_functions=1 
let java_highlight_java_lang_ids=1 

" Ignore compiled files
set wildignore=*.o,*~,*.pyc,*.class
"poner extension archivo compilado
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
