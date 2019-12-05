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

Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'Shougo/neco-vim'


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-H>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

Plugin 'wakatime/vim-wakatime'

" Plugin 'qpkorr/vim-bufkill'
Plugin 'fholgado/minibufexpl.vim'
" Para que no se abra solo al iniciar
let g:miniBufExplorerAutoStart = 0
Plugin 'kana/vim-textobj-line'
Plugin 'kana/vim-textobj-user'

" Plugin 'lifepillar/vim-mucomplete'

Plugin 'dhruvasagar/vim-pairify'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Colors
colorscheme codedark
syntax enable

" Spaces Tabs
" set smartindent
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
set so=5 "para que el cursor se quede a 5 lineas del borde de la pantalla
" Wrap Config
" set wrap
set breakindent

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

" Cargar archivos al cambiar en disco
set autoread
" au CursorHold * checktime  

" Search options
set hlsearch
set incsearch
set smartcase

" Split right
set splitright
" set splitbelow

" Buffer options
set hid

" MBE settings
let g:miniBufExplMaxSize = 2

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

let mapleader = ","

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>
" Close the current buffer
map <leader>bd : bp\|bd #<cr>
":tabclose<cr>gT

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>tt :tabnext<cr>

" Opens a new tab with the current buffer's path
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/<cr>

" Remaps propios
nmap <leader>w :w!<cr>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
nnoremap <leader>j :find ./**/
imap <c-e> <Del>

map <leader>ee :16Lex<cr>
map <leader>qa :qall<cr>
map <leader>db :WakaTimeToday<cr>
map <leader>qs :mksession!<cr>
 "Espejo hay que empezar una linea antes
map <leader>rv :g/^/m'<<cr> :noh<cr>

nmap <cr> o<Esc>
map ñ <C-^>
map <C-d> "_d
map :: q:i

nnoremap <C-J> 10j
nnoremap <C-k> 10k
map ; A;<esc>
map ´ <C-]>

nnoremap <C-p> :ls<cr>:b<Space>
map Q @:
nnoremap <S-s> $s

map <F8> :set foldmethod=syntax<cr>

" Remaps para el MBE
map <leader>f :MBEFocus<cr>
map <leader>t :MBEToggle<cr>
map <leader>c :MBEClose<cr>
map <leader>u :MBEToggleMRU<cr>

"Movidas con el indent
map <F7> gg=G<C-o><C-o>
nnoremap p p=`]
nnoremap P P=`]

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
set foldmethod=syntax   
" set foldnestmax=10
set nofoldenable
" set foldlevel=2
hi Folded ctermfg=230
hi Folded ctermbg=59
" movida para guardar/cargar vistas en archivos
" de momento lo quito porque es una movida joder
" revisar el :h :mkview
" augroup remember_folds
"   autocmd!
"     autocmd BufWinLeave * mkview
" 	  autocmd BufWinEnter * silent! loadview
"   augroup END

" augroup QuickNotes
"     autocmd!
"     autocmd BufWinLeave *.md execute "mkview! " . expand('<afile>:p:h') . "/." . expand('<afile>:t') . ".view"
"     autocmd BufWinEnter *.md execute "silent! source " . expand('%:p:h') . "/." . expand('%:t') . ".view"
" augroup END


"Comfiguracion complete
set completeopt+=noselect,menuone,longest,noinsert
set omnifunc=syntaxcomplete#Complete
" inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
"
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

" Funcion para buscar en todos los buffers
" con :cw aparece ventana con resultados
" siguiente con :cn, anterior con :cp
function! BuffersList()
  let all = range(0, bufnr('$'))
  let res = []
  for b in all
    if buflisted(b)
      call add(res, bufname(b))
    endif
  endfor
  return res
endfunction

function! GrepBuffers (expression)
  exec 'vimgrep/'.a:expression.'/ '.join(BuffersList())
endfunction

command! -nargs=+ GrepBufs call GrepBuffers(<q-args>)

" Limpiar la quickFix
function ClearQuickfixList()
  call setqflist([])
endfunction
command! ClearQuickfixList call ClearQuickfixList()
nmap <leader>cf :ClearQuickfixList<cr>

function LimpiarQF()
	command! ClearQuickfixList cexpr []
endfunction
	

" Intento funcion
function! CoutOff()
	%s?cout?//cout
endfunction
command CoutOff call CoutOff()

function! CoutOn()
	%s?//cout?cout
endfunction
command CoutOn call CoutOn()

" buscar seleccion en visual mode
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" =============================================================================
" VIM-MUCOMPLETE
" =============================================================================
let g:mucomplete#enable_auto_at_startup = 1
let g:mucomplete#no_mappings = 1


" let g:mucomplete#chains = {}
" si pongo 'ulti' peta bastante revisar eso
" let g:mucomplete#chains.default = ['c-n', 'omni', 'path', 'keyn', 'tags']


" =============================================================================
" Auto pairs
" =============================================================================
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


" if nr2char(strgetchar(getline('.')[col('.') - 1:], 0)) == '(' &&  nr2char(strgetchar(getline('.')[col('.') - 1:], 1)) == ')'
" 	normal xx
" endif

let g:deoplete#enable_at_startup = 1
call deoplete#custom#option({
			\ 'max_list': 7000,
			\ 'min_pattern_length': 1,
			\ 'auto_preview': v:true,
			\ 'smart_case': v:true,
			\ 'skip_multibyte': v:true,
			\ 'skip_chars': ['(', ')', '<', '>'],
			\ 'auto_complete:delay' : 30,
			\ })

call deoplete#custom#source('ultisnips',        'rank', 500)
call deoplete#custom#source('omni',          'rank', 600)
call deoplete#custom#source('vim',           'rank', 640)
