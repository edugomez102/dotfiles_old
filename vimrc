"Movidas del gestor de Plugins Vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

Plugin 'wakatime/vim-wakatime'

Plugin 'qpkorr/vim-bufkill'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Colors
colorscheme codedark
syntax enable

" Spaces Tabs
set smartindent
set smarttab "no seguro de esto e
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
"set expandtab

" UI Config
set wildmenu
set wildignorecase
set showcmd
set cursorline
set showmatch 
set title

"Movida con los numeros
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

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

" Movida con indentar comments, esto pasaba por el filetype pluginrindent 
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"para un solo uso seria con--> :set formatoptions-=cro

" Netrw options
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_fastbrowse = 0
" let g:netrw_winsize = 21
 "para cerrar despues de elegir
let g:netrw_browse_split = 0
 "al darle a la v
let g:netrw_altv = 1

" With a MAP LEADER it's possible to do extra key combinations
let mapleader = ","

" like <leader>w saves the current file
" Fast saving
nmap <leader>w :w!<cr>
" Remaps con <leader>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
nnoremap <leader>j :find ./**/

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>
" Close the current buffer
map <leader>bd :BD<cr>
":tabclose<cr>gT

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>tt :tabnext<cr>

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/<cr>

" Remaps propios
map <leader>ee :19Lex<cr>
map <leader>qa :qall<cr>
map <leader>db :WakaTimeToday<cr>
map <leader>qs :mksession!<cr>
map <leader>ss :split ./**/
map <leader>vs :vsplit ./**/
nmap <cr> o<Esc>

nnoremap <C-J> 10j
nnoremap <C-k> 10k

nnoremap <C-p> :ls<cr>:b<Space>
map Q <Nop>
nnoremap <S-s> $s

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
let java_highlight_all = 1

" If you are trying this at runtime, you need to reload the syntax file
" set filetype=java
" Some more highlights, in addition to those suggested by cmcginty
highlight link javaScopeDecl Statement
highlight link javaType Type
highlight link javaDocTags PreProc

" Ignore wildmenu
set wildignore=*.o,*~,*.pyc,*.class,.wakatime-project,*.swo
" Ignore netrw 
let g:netrw_list_hide = '.*\.swp$,.*\.o,.wakatime-project,.swp, *.class,*.swo'
let g:netrw_hide = 1

"Configuracion de folds
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

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
