inoremap <C-@> \
setlocal spell
set spelllang=es

call deoplete#custom#var('omni', 'input_patterns', {
			\ 'tex' : g:vimtex#re#deoplete,
			\})
