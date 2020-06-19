"    ____ ___  __  __   _   __(_)___ ___  __________
"   / __ `__ \/ / / /  | | / / / __ `__ \/ ___/ ___/
"  / / / / / / /_/ /   | |/ / / / / / / / /  / /__  
" /_/ /_/ /_/\__, /    |___/_/_/ /_/ /_/_/   \___/  
"           /____/                                  

" ┌──────────────┐
" │ Plug manager │
" └──────────────┘
call plug#begin('./plugged')

" Colorschemes
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'tomasiser/vim-code-dark'

" Syntax highlighting various languages
Plug 'sheerun/vim-polyglot'

" Appearence
	" Nerdfonts icons
Plug 'ryanoasis/vim-devicons'
	" Status line
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

" Snippets
Plug 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<C-H>"
let g:UltiSnipsEditSplit="vertical"
let g:ultisnips_javascript = {
			\ 'keyword-spacing': 'always',
			\ 'semi': 'never',
			\ 'space-before-function-paren': 'always',
			\ }

" Toggle comment
Plug 'tomtom/tcomment_vim'
	" map to gc
xnoremap <C-\> gc

" Unix commands
Plug 'tpope/vim-eunuch'

" EasyAlign
Plug 'junegunn/vim-easy-align'
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" Popup menu
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

" Autocompletition
Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Ctrl enter to complete
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" File tree
Plug 'liuchengxu/vista.vim'
let g:vista_stay_on_open = 0

" Vim textobjects
Plug 'kana/vim-textobj-line'
Plug 'kana/vim-textobj-user'

Plug 'dhruvasagar/vim-pairify'
if !exists('g:pairify_map')
	let g:pairify_map = "<s-tab>"
endif
" inoremap <S-tab> <ESC>la

Plug 'neomake/neomake'
    augroup my_neomake_signs
        au!
        autocmd ColorScheme *
            \ hi NeomakeWarningSign ctermfg=186
    augroup END

" Version control changes
Plug 'mhinz/vim-signify'

" Auto sessions
Plug 'tpope/vim-obsession'

" File tree
Plug 'scrooloose/nerdtree'
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
Plug 'Xuyuanp/nerdtree-git-plugin'

" Visible marks
Plug 'jeetsukumaran/vim-markology'

" Improve search
Plug 'osyo-manga/vim-anzu'
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)

" Generate ctags files
" Plug 'ludovicchabant/vim-gutentags'

" Fuzzy finder
Plug 'junegunn/fzf.vim'

" Vim ghost
" Plug 'https://github.com/raghur/vim-ghost'

" Extra functions
Plug 'drmingdrmer/vim-toggle-quickfix'
Plug 'jiangmiao/auto-pairs'
	" Surround object
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
	" UI Color picker
Plug 'DougBeney/pickachu'

" Languages

" Html imrovements
Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim'
Plug 'adelarsq/vim-matchit'
Plug 'AndrewRadev/tagalong.vim'

" LaTeX
Plug 'lervag/vimtex'
let g:tex_flavor = 'latex'
let g:polyglot_disabled = ['latex']
let g:vimtex_view_general_viewer = 'okular'

" C#
Plug 'OmniSharp/omnisharp-vim'

" Some plugin depenencies
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'

Plug 'wakatime/vim-wakatime'

call plug#end()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ┌────────┐
" │ Colors │
" └────────┘
colorscheme codedark
set background=dark
syntax enable

" ┌────────────┐
" │ Tab config │
" └────────────┘
set smarttab
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
	" para que el cursor se quede a 5 lineas del borde de la pantalla
set so=3

" Wrap Config
" set wrap
set breakindent

" List Config
set list
set listchars=tab:┊\ ,space:•,nbsp:␣,trail:⌁,precedes:«,extends:»
" set listchars+=eol:↲
hi SpecialKey ctermfg=238
hi NonText ctermfg=239

" Window separation char
set fillchars+=vert:\▏

" ┌────────────────┐
" │ Number options │
" └────────────────┘
set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END


" ┌──────────────┐
" │ File options │
" └──────────────┘
filetype plugin indent on
" Cargar archivos al cambiar en disco
set autoread
set updatetime=100
" au CursorHold,CursorHoldI * checktime

" ┌────────────────┐
" │ Search options │
" └────────────────┘
set hlsearch
set incsearch
set ignorecase
set smartcase

" ┌──────────────┐
" │ Move options │
" └──────────────┘

" move vertically by visual line
nnoremap j gj
nnoremap k gk
	" jump by visual line
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')

" ┌──────┐
" │ Misc │
" └──────┘

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Performance options
set lazyredraw

" Split right
set splitright
" set splitbelow

" Buffer options
set hid

" Movida con indentar comments, esto pasaba por el filetype pluginrindent 
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"para un solo uso seria con--> :set formatoptions-=cro

" ┌─────────────────────┐
" │ More plugin options │
" └─────────────────────┘
" ┌───────────┐
" │ Markology │
" └───────────┘
if has_key(plugs, "vim-markology")
	hi MarkologyHLl ctermfg=216 cterm=italic
	hi MarkologyHLu ctermfg=216 cterm=italic
	hi MarkologyHLo ctermfg=189 cterm=italic
	hi MarkologyHLm ctermfg=214 cterm=italic
	nmap <silent> mj <Plug>MarkologyNextLocalMarkPos
	nmap <silent> mk <Plug>MarkologyPrevLocalMarkPos
endif

" ┌─────────┐
" │ Signify │
" └─────────┘
if has_key(plugs, "vim-signify")
	highlight SignifySignChange ctermfg=yellow guifg=#ffff00 cterm=NONE gui=NONE
	highlight SignifySignAdd    ctermfg=green  guifg=#00ff00 cterm=NONE gui=NONE
	highlight SignifySignDelete ctermfg=89  guifg=#ff0000 cterm=NONE gui=NONE
	let g:signify_sign_change = '~'
endif

" ┌───────────┐
" │ OmniSharp │
" └───────────┘
if has_key(plugs, "omnisharp-vim")
	let g:omnicomplete_fetch_full_documentation = 1
	augroup omnisharp_commands
		autocmd!
		autocmd CursorHold *.cs OmniSharpTypeLookup
		autocmd FileType cs nnoremap <buffer> <Leader>c :OmniSharpDocumentation<CR>
		autocmd FileType cs nnoremap <buffer> <Leader>x :OmniSharpPreviewDefinition<CR>
		set completeopt=longest,menuone,preview,popuphidden
	augroup END
endif

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

" ┌────────┐
" │ Remaps │
" └────────┘

let mapleader = "\<Space>"
	" Close the current buffer
map <leader>bd : bp\|bd #<cr>
	" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>

" Remaps propios
map s "_d
nmap ss "_dd
nmap <s-S> "_D

nmap <leader>w :w!<cr>
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>
nnoremap <leader>j :find ./**/
nnoremap <leader>s :vimgrep  ./**/*<left><left><left><left><left><left><left>
map Y y$
map Q @:

map <leader>d :SignifyHunkDiff<cr>

" Insert Mode
imap <c-e> <Del>
imap jk <Esc>

"toggle quickfix
nmap <F3> <Plug>window:quickfix:loop

map <leader>ee :NERDTreeToggle<cr>

map <leader>qa :qall<cr>
map <leader>db :WakaTimeToday<cr>
map <leader>qs :ClapMksession<cr>
" Espejar lineas(hay que empezar una linea antes)
map <leader>rv :g/^/m'<<cr> :noh<cr>

" mapear enter a nueva linea menos en el quickfix
nnoremap <expr> <CR> &buftype ==# 'quickfix' ? "\<CR>" : 'o<Esc>'

" borrar linea y pegar
map gp pk"_dd
map :: q:

" clean quickfix
nmap <leader>cf :cexpr []<cr>

map <F8> :set foldmethod=syntax<cr>
" map <leader>a :bufdo :args ## %<cr>
nmap <leader>c <Plug>window:quickfix:loop
	" disable K
map K <nop>

" Clap maps
" nnoremap <C-p> :ls<cr>:b<Space>
nnoremap <c-p> :Clap buffers<cr>
nnoremap <c-h> :Clap lines<cr>
nnoremap <c-j> :Clap files<cr>
nnoremap <c-n> :Clap filer<cr>
nnoremap <c-k> :Clap tags<cr>
nnoremap <leader>f :Clap<cr>
nnoremap <leader>y :Clap yanks<cr>

" ┌────────────────────┐
" │ Search and replace │
" └────────────────────┘

	" buscar seleccion en visual mode
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
	" remplazar visual mode desde linea actual hasta fin fichero
vnoremap <C-r> "hy:.,$s/<C-r>h//gc<left><left><left>
	" buscar palabra exacta
nnoremap <leader>/ /\<\><left><left>
	" buscar y seleccionar en bloque
nnoremap <Space>r :'{,'}s/\<<C-r>=expand('<cword>')<CR>\>/


" TODO: check
"Movidas con el indent
" map <F7> gg=G<C-o><C-o>
nnoremap p p=`]
nnoremap P P=`]


nmap <leader>t :call Toggle()<CR>
vmap <leader>t <ESC>:call Toggle()<CR>

" ┌───────┐
" │ Folds │
" └───────┘
set foldmethod=syntax   
" set foldnestmax=10
set nofoldenable
" set foldlevel=2
hi Folded ctermfg=230
hi Folded ctermbg=59

" ┌──────────────────┐
" │ Complete options │
" └──────────────────┘
set completeopt+=noselect,menuone,longest,noinsert
set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
" inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
" inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
" inoremap <expr> <CR>       pumvisible() ? "\<C-y><cr>" : "\<CR>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

" ┌──────────┐
" │ Wildmenu │
" └──────────┘
" Ignore wildmenu
set wildignore=*.o,*~,*.pyc,*.class,.wakatime-project,*.swp
"poner extension archivo compilado
if has("win16") || has("win32")
	set wildignore+=.git\*,.hg\*,.svn\*
else
	set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" ┌───────┐
" │ Sound │
" └───────┘
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

" ┌──────────────┐
" │ Dictionaries │
" └──────────────┘
set dictionary+=/usr/share/dict/spanish
set dictionary+=/usr/share/dict/american-english

" ┌────────────┐
" │ Spellcheck │
" └────────────┘
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

" ┌──────┐
" │ Misc │
" └──────┘
map <F9> :NeomakeSh viewnior ~/Pictures/code/csscolosr.png<cr>

