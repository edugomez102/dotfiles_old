inoremap <C-@> \
setlocal spell
set spelllang=es

call deoplete#custom#var('omni', 'input_patterns', {
			\ 'tex' : g:vimtex#re#deoplete,
			\})
setlocal tabstop=2
setlocal shiftwidth=2

inoremap & \&
inoremap $ \$
inoremap % \%


