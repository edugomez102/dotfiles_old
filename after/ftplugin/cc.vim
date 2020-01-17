
" Intento funcion
function! CoutOff()
	%s?cout?//cout
endfunction
command CoutOff call CoutOff()

function! CoutOn()
	%s?//cout?cout
endfunction
command CoutOn call CoutOn()

