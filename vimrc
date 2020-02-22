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

Plugin 'tomtom/tcomment_vim'
" Autocompletition
Plugin 'Shougo/deoplete.nvim'

Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'Shougo/neco-vim'

"java
Plugin 'artur-shaik/vim-javacomplete2'

"python
Plugin 'davidhalter/jedi'
Plugin 'deoplete-plugins/deoplete-jedi'
Plugin 'Vimjas/vim-python-pep8-indent'

" LaTeX
Plugin 'lervag/vimtex'
let g:tex_flavor = 'latex'

" Markdown
" Plugin 'plasticboy/vim-markdown'

" javascript
" Plugin 'wokalski/autocomplete-flow'

"C#
" Plugin 'OmniSharp/omnisharp-vim'
" let g:OmniSharp_server_stdio = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-H>"
let g:UltiSnipsEditSplit="vertical"

Plugin 'wakatime/vim-wakatime'

Plugin 'fholgado/minibufexpl.vim'
let g:miniBufExplorerAutoStart = 0

Plugin 'kana/vim-textobj-line'
Plugin 'kana/vim-textobj-user'

Plugin 'itchyny/lightline.vim'

Plugin 'mengelbrecht/lightline-bufferline'

" Plugin 'lifepillar/vim-mucomplete'

Plugin 'dhruvasagar/vim-pairify'
" inoremap <S-tab> <ESC>la

Plugin 'itchyny/vim-gitbranch'

Plugin 'neomake/neomake'
Plugin 'mhinz/vim-signify'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

Plugin 'chrisbra/Colorizer'
Plugin 'drmingdrmer/vim-toggle-quickfix'

Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'

" Plugin 'kshenoy/vim-signature'
" Plugin 'jeetsukumaran/vim-markology'
" Plugin 'zakj/vim-showmarks'

" Plugin 'justinmk/vim-sneak'
Plugin 'Kazark/vim-SimpleSmoothScroll'

"html imrovements
Plugin 'ap/vim-css-color'
Plugin 'mattn/emmet-vim'
Plugin 'adelarsq/vim-matchit'

"Improve search
Plugin 'osyo-manga/vim-anzu'
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)

Plugin 'DougBeney/pickachu'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ┌────────┐
" │ Colors │
" └────────┘
colorscheme codedark
syntax enable

" ┌────────────┐
" │ tab config │
" └────────────┘
" set smartindent
set smarttab "no seguro de esto e
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
"set expandtab

" ┌───────────┐
" │ UI config │
" └───────────┘
set wildmenu
set wildignorecase
set showcmd
set cursorline
set showmatch 
set title
set so=3 "para que el cursor se quede a 5 lineas del borde de la pantalla
" Wrap Config
" set wrap
set breakindent
set list
set listchars=tab:┊\ ,space:•,nbsp:␣,trail:⌁,precedes:«,extends:»
" set listchars+=eol:↲
hi SpecialKey ctermfg=238
hi NonText ctermfg=239
" set fillchars+=vert:\▏
set fillchars+=vert:\ 

" ┌────────────────┐
" │ Number options │
" └────────────────┘
set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" ┌─────────────┐
" │ File optins │
" └─────────────┘
" Cargar archivos al cambiar en disco
set autoread
set updatetime=100
" au CursorHold,CursorHoldI * checktime

" ┌────────────────┐
" │ Search options │
" └────────────────┘
" todavia puede haber cambios aqui
set hlsearch
set incsearch
set ignorecase
set smartcase

" ┌──────┐
" │ Misc │
" └──────┘

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Performance options
set lazyredraw

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

" ┌───────────────┐
" │ Netrw options │
" └───────────────┘
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_fastbrowse = 0
" let g:netrw_winsize = 21
"para cerrar despues de elegir
let g:netrw_browse_split = 0
"al darle a la v
let g:netrw_altv = 1

" Ignore netrw 
let g:netrw_list_hide = '.*\.swp$,.*\.o,.wakatime-project,.swp, *.class,*.swo'
let g:netrw_hide = 1

" ┌────────┐
" │ Remaps │
" └────────┘

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
map <Space> /
map <C-@> ?
map ¡ :noh<cr>
map º $
map ¡ ]m
map ¿ [m

" Insert Mode
imap <c-e> <Del>
imap ´ {
"toggle quickfix
" nmap <C-g><C-o> <Plug>window:quickfix:toggle
nmap <F3> <Plug>window:quickfix:loop

map <leader>ee :NERDTreeToggle<cr>

map <leader>qa :qall<cr>
map <leader>db :WakaTimeToday<cr>
map <leader>qs :mksession!<cr>
 "Espejo hay que empezar una linea antes
map <leader>rv :g/^/m'<<cr> :noh<cr>

" nmap <cr> o<Esc>
" mapear enter a nueva linea menos en el quickfix
nnoremap <expr> <CR> &buftype ==# 'quickfix' ? "\<CR>" : 'o<Esc>'
map ñ <C-^>
map K <nop>
map gp pk"_dd
map :: q:

nnoremap <C-J> 10j
nnoremap <C-k> 10k
" map ; A;<esc>
map ´ <C-]>

nnoremap <C-p> :ls<cr>:b<Space>
map Q @:
nnoremap <S-s> $s

map <F8> :set foldmethod=syntax<cr>

nmap <leader>c <Plug>window:quickfix:loop

" buscar seleccion en visual mode
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
" remplazar visual mode
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>
" buscar palabra exacta
nnoremap <leader><Space> /\<\><left><left>

" Remaps para el MBE
map <leader>f :MBEFocus<cr>
map <leader>t :MBEToggle<cr>
" map <leader>c :MBEClose<cr>
map <leader>u :MBEToggleMRU<cr>

"Movidas con el indent
map <F7> gg=G<C-o><C-o>
nnoremap p p=`]
nnoremap P P=`]

" Plugin toggle comment
xnoremap <C-\> gc
"autocmd FileType apache setlocal commentstring=#\ %s

" ┌───────────┐
" │ Ligthline │
" └───────────┘
set laststatus=2
set noshowmode
set ttimeoutlen=50
let g:lightline = {
	  \ 'active': {
	  \   'left': [ [ 'mode', 'paste' ],
	  \				[ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
	  \ },
	  \ 'component_function': {
	  \   'gitbranch': 'gitbranch#name'
	  \ },
	  \ }

" Show buffers on tabline
" set showtabline=2
" let g:lightline.tab              = {'active': ['tabnum'], 'inactive': ['tabnum'] }
" let g:lightline.tabline          = {'left': [['tabs'],['buffers']], 'right': []}
" let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
" let g:lightline.component_type   = {'buffers': 'tabsel'}
" autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()


" Plugin de highlight C++?
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1


" Ignore wildmenu
set wildignore=*.o,*~,*.pyc,*.class,.wakatime-project,*.swp

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
set completeopt-=preview
" inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
" inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
" inoremap <expr> <CR>       pumvisible() ? "\<C-y><cr>" : "\<CR>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"
"
"poner extension archivo compilado
if has("win16") || has("win32")
	set wildignore+=.git\*,.hg\*,.svn\*
else
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" ┌──────┐
" │ Soud │
" └──────┘
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" ┌───────────┐
" │ Functions │
" └───────────┘
" Funcion para buscar en todos los buffers
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
" function ClearQuickfixList()
"   call setqflist([])
" endfunction
" " command! ClearQuickfixList call ClearQuickfixList()
" command! ClearQuickfixList cexpr []
" nmap <leader>cf :ClearQuickfixList<cr>
nmap <leader>cf :cexpr []<cr>


"Movida para cargar todos los buffers"
function! LoadAll()
	let ccc = 0
	while ccc < (bufnr('$'))
		echom ccc
		bn
		e
		sleep 50m
		let ccc += 1
	endwhile
endfunction

" =============================================================================
" Dictionaries
" =============================================================================
set dictionary+=/usr/share/dict/spanish
set dictionary+=/usr/share/dict/american-english

" =============================================================================
" VIM-MUCOMPLETE
" =============================================================================
" let g:mucomplete#enable_auto_at_startup = 1
" let g:mucomplete#no_mappings = 1
"
" let g:mucomplete#minimum_prefix_length = 1
"
" let g:mucomplete#chains = {}
" " si pongo 'ulti' peta bastante revisar eso
" let g:mucomplete#chains.default = ['c-n', 'omni', 'dict', 'keyn', 'tags']
"
" 	if has("autocmd") && exists("+omnifunc")
" 	autocmd Filetype *
" 			\	if &omnifunc == "" |
" 			\		setlocal omnifunc=syntaxcomplete#Complete |
" 			\	endif
" 	endif
" =============================================================================
" Auto pairs
" =============================================================================
" inoremap " ""<left>
" inoremap ' ''<left>
" inoremap ( ()<left>
" inoremap [ []<left>
" inoremap { {}<left>
" inoremap {<CR> {<CR>}<ESC>O
" inoremap {;<CR> {<CR>};<ESC>O

" =============================================================================
" Signify
" =============================================================================
highlight SignifySignChange ctermfg=yellow guifg=#ffff00 cterm=NONE gui=NONE
highlight SignifySignAdd    ctermfg=green  guifg=#00ff00 cterm=NONE gui=NONE
highlight SignifySignDelete ctermfg=89  guifg=#ff0000 cterm=NONE gui=NONE
let g:signify_sign_change = '~'

" =============================================================================
" NERDTree
" =============================================================================
let NERDTreeRespectWildIgnore=1
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeIndicatorMapCustom = {
	\ "Modified"  : "●",
    \ "Staged"    : "✚",
    \ "Untracked" : "*",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

" =============================================================================
" Deoplete
" =============================================================================
let g:deoplete#enable_at_startup = 1

call deoplete#custom#option({
			\ 'auto_complete:delay' : 30,
			\ 'min_pattern_length': 1,
			\ 'max_list': 7000,
			\ 'auto_preview': v:true,
			\ 'smart_case': v:true,
			\ 'skip_multibyte': v:true,
			\ })
			" \ 'skip_chars': ['(', ')', '<', '>'],

call deoplete#custom#source('ultisnips',        'rank', 600)
" call deoplete#custom#source('omni',          'rank', 500)
call deoplete#custom#source('vim',           'rank', 450)

" call deoplete#custom#option('omni_patterns', {
" 		\ 'java': '[^. *\t]\.\w*',
" 		\  'html': ['<', '</', '<[^>]*\s[[:alnum:]-]*']
" 		\})
" 		call deoplete#custom#var('omni', 'input_patterns', {
" 		    \ 'ruby': ['[^. *\t]\.\w*', '[a-zA-Z_]\w*::'],
" 		    \ 'java': '[^. *\t]\.\w*',
" 		    \ 'php': '\w+|[^. \t]->\w*|\w+::\w*',
" 		    \})
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#omni_patterns = {}
" let g:deoplete#omni_patterns.java = '[^. *\t]\.\w*'
" let g:deoplete#sources = {}
" let g:deoplete#sources._ = []
" let g:deoplete#file#enable_buffer_path = 1
" if !exists('g:deoplete#omni#input_patterns')
"     let g:deoplete#omni#input_patterns = {}
" endif

" if has("autocmd")
"   au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
"   au InsertEnter,InsertChange *
" \ if v:insertmode == 'i' | 
" \   silent execute '!echo -ne "\e[6 q"' | redraw! |
" \ elseif v:insertmode == 'r' |
" \   silent execute '!echo -ne "\e[4 q"' | redraw! |
" \ endif
" " au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
" " endif

" =============================================================================
" Spellcheck
" =============================================================================
" setlocal spell
set spelllang=en_gb
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u
" inoremap <C-l>l <Esc>u2z=gi
hi clear SpellBad
hi SpellBad cterm=underline ctermfg=161
nmap <f4> :set spell! <bar> set spelllang=es<cr>
" ┌──────────┐
" │ Sessions │
" └──────────┘
set ssop-=options    " do not store global and local values in a session
" set ssop-=folds      " do not store folds

" ┌─────────────────┐
" │ Persistent undo │
" └─────────────────┘
set undodir=~/.vim/undo-dir
set undofile

