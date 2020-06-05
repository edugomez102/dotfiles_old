set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

" colorschemes
Plug 'morhetz/gruvbox'
" Plug 'arcticicestudio/nord-vim'
Plug 'cocopon/iceberg.vim'
Plug 'tomasiser/vim-code-dark'

" syntax highlighting
Plug 'sheerun/vim-polyglot'

Plug 'ryanoasis/vim-devicons'

Plug 'SirVer/ultisnips'
" Plug 'matze/vim-move'
" let g:move_key_modifier = "C"

Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

Plug 'liuchengxu/vim-clap'
let g:clap_layout = { 'relative': 'editor', 'width': '80%', 'col' : '4%' , 'row' : '10%', 'height': '50%'}
let g:clap_on_move_delay = 1
let g:clap_session_dir = '~/.vim/sessions'
hi default link ClapProjTagPattern Normal
Plug 'hokorobi/vim-clap-sessions'
let g:clap_provider_dotfiles = {
      \ 'source': ['~/.vim/vimrc', '~/.bashrc', '~/.zshrc'],
      \ 'sink': 'e',
      \ }

Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-eunuch'

" Autocompletition
" Plug 'Shougo/deoplete.nvim'
" Use release branch (Recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? "\<C-n>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~# '\s'
" endfunction

if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'Shougo/neco-vim'

"java
Plug 'artur-shaik/vim-javacomplete2'

"python
Plug 'davidhalter/jedi'
" Plug 'deoplete-plugins/deoplete-jedi'
Plug 'Vimjas/vim-python-pep8-indent'

" LaTeX
Plug 'lervag/vimtex'
let g:tex_flavor = 'latex'
let g:polyglot_disabled = ['latex']
let g:vimtex_view_general_viewer = 'okular'

" Markdown
" Plug 'plasticboy/vim-markdown'

" javascript
" Plug 'wokalski/autocomplete-flow'
" Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
" let g:deoplete#omni#functions = {}
" let g:deoplete#omni#functions.javascript = [
"   \ 'tern#Complete',
"   \ 'jspc#omni'
" \]
"
"C#
" Plug 'OmniSharp/omnisharp-vim'
" let g:OmniSharp_server_stdio = 1

" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-H>"
let g:UltiSnipsEditSplit="vertical"
let g:ultisnips_javascript = {
     \ 'keyword-spacing': 'always',
     \ 'semi': 'never',
     \ 'space-before-function-paren': 'always',
     \ }

Plug 'wakatime/vim-wakatime'

Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'

Plug 'itchyny/lightline.vim'
Plug 'prettier/vim-prettier'

Plug 'mengelbrecht/lightline-bufferline'

Plug 'liuchengxu/vista.vim'
let g:vista_stay_on_open = 0

" Plug 'lifepillar/vim-mucomplete'

Plug 'dhruvasagar/vim-pairify'
" inoremap <S-tab> <ESC>la

Plug 'itchyny/vim-gitbranch'

Plug 'neomake/neomake'
    augroup my_neomake_signs
        au!
        autocmd ColorScheme *
            \ hi NeomakeWarningSign ctermfg=186
    augroup END

Plug 'mhinz/vim-signify'

Plug 'tpope/vim-obsession'

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'chrisbra/Colorizer'
Plug 'drmingdrmer/vim-toggle-quickfix'

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Plug 'kshenoy/vim-signature'
Plug 'jeetsukumaran/vim-markology'

" Plug 'justinmk/vim-sneak'
" Plug 'Kazark/vim-SimpleSmoothScroll'

"html imrovements
Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim'
Plug 'adelarsq/vim-matchit'
Plug 'AndrewRadev/tagalong.vim'

"Improve search
Plug 'osyo-manga/vim-anzu'
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)

Plug 'DougBeney/pickachu'

Plug 'https://github.com/raghur/vim-ghost'

Plug 'OmniSharp/omnisharp-vim'

call plug#end()

filetype plugin indent on    " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ┌────────┐
" │ Colors │
" └────────┘
colorscheme codedark
" set background=dark
syntax enable

" hi Normal guibg=NONE ctermbg=NONE
" hi LineNr ctermfg=none ctermbg=none
" hi clear SignColumn

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
" hi CursorLine guibg=NONE ctermbg=NONE
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
set fillchars+=vert:\▏
" set fillchars+=vert:\ 

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
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

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
map s "_d
nmap ss "_dd
nmap <s-S> "_D
nmap <leader>w :w!<cr>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
nnoremap <leader>j :find ./**/
nnoremap <leader>s :vimgrep  ./**/*<left><left><left><left><left><left><left>
map <Space> /
map <C-@> ?
map ¡ :noh<cr>
map º $
map ¡ ]m
map ¿ [m
map Y y$
map <leader>d :SignifyHunkDiff<cr>

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

" nnoremap <C-J> 10j
" nnoremap <C-k> 10k
" map ; A;<esc>
map ´ <C-]>

" nnoremap <C-p> :ls<cr>:b<Space>
nnoremap <c-p> :Clap buffers<cr>
nnoremap <c-h> :Clap lines<cr>
nnoremap <c-j> :Clap files<cr>
nnoremap <c-n> :Clap filer<cr>
nnoremap <c-k> :Clap tags<cr>
map Q @:

map <F8> :set foldmethod=syntax<cr>
" map <leader>a :bufdo :args ## %<cr>
nmap <leader>c <Plug>window:quickfix:loop

" buscar seleccion en visual mode
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
" remplazar visual mode desde linea actual hasta fin fichero
vnoremap <C-r> "hy:.,$s/<C-r>h//gc<left><left><left>

" buscar palabra exacta
nnoremap <leader><Space> /\<\><left><left>

"Movidas con el indent
map <F7> gg=G<C-o><C-o>
nnoremap p p=`]
nnoremap P P=`]

nnoremap <leader>f :Clap<cr>
nnoremap <leader>y :Clap yanks<cr>

" Plug toggle comment
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


" Plug de highlight C++?
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
let NERDTreeDirArrowExpandable="\u00a0"
let NERDTreeDirArrowCollapsible="\u00a0"
" let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
" let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1


" =============================================================================
" Deoplete
" =============================================================================
" let g:deoplete#enable_at_startup = 1
"
" call deoplete#custom#option({
" 			\ 'auto_complete:delay' : 30,
" 			\ 'min_pattern_length': 1,
" 			\ 'max_list': 7000,
" 			\ 'auto_preview': v:true,
" 			\ 'smart_case': v:true,
" 			\ 'skip_multibyte': v:true,
" 			\ })
" 			" \ 'skip_chars': ['(', ')', '<', '>'],
"
" call deoplete#custom#source('ultisnips',        'rank', 600)
" " call deoplete#custom#source('omni',          'rank', 500)
" call deoplete#custom#source('vim',           'rank', 450)

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

" ┌───────────┐
" │ Markology │
" └───────────┘
  " - MarkologyHLl  : This group is used to highlight all the lowercase marks.
  " - MarkologyHLu  : This group is used to highlight all the uppercase marks.
  " - MarkologyHLo  : This group is used to highlight all other marks.
  " - MarkologyHLm  : This group is used when multiple marks are on the same line.
  " - MarkologyHLLine : This group is used to highlight lines if line-highlighting is selected.
hi MarkologyHLl ctermfg=216 cterm=italic
hi MarkologyHLu ctermfg=216 cterm=italic
hi MarkologyHLo ctermfg=189 cterm=italic
hi MarkologyHLm ctermfg=214 cterm=italic
nmap <silent> mj <Plug>MarkologyNextLocalMarkPos
nmap <silent> mk <Plug>MarkologyPrevLocalMarkPos

" ┌───────────┐
" │ OmniSharp │
" └───────────┘
" let g:OmniSharp_highlight_types = 1
let g:omnicomplete_fetch_full_documentation = 1

augroup omnisharp_commands
	autocmd!
autocmd CursorHold *.cs OmniSharpTypeLookup
	autocmd FileType cs nnoremap <buffer> <Leader>c :OmniSharpDocumentation<CR>
	autocmd FileType cs nnoremap <buffer> <Leader>x :OmniSharpPreviewDefinition<CR>
	set completeopt=longest,menuone,preview,popuphidden
augroup END




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


" ┌──────────────┐
" │ open manuals │
" └──────────────┘
runtime! ftplugin/man.vim


map <F9> :NeomakeSh viewnior ~/Pictures/code/csscolosr.png<cr>
" map <F6> :let $VIM_DIR=expand('%:p:h')<CR>:!cd $VIM_DIR<CR>

