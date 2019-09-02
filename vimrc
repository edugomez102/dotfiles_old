" Colors
colorscheme codedark
syntax enable

" Spaces Tabs
"set tabstop=4
"set softtabstop=4
"set expandtab
"filetype plugin indent on
set smartindent
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

" Plugin de la barra esa
set laststatus=2
set noshowmode
set ttimeoutlen=50

" Plugin toggle comment
xnoremap <C-\> gc

" Plugin de highlight C++
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

" Default highlight java
" let java_comment_strings=1 
let java_highlight_functions=1 
let java_highlight_java_lang_ids=1 

 " Italics para sublimemonokai
 let g:sublimemonokai_term_italic = 1
