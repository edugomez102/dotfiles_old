


 syntax match Brackets display '[(){}\[\]]'
 highlight Brackets ctermfg=186
 
 syntax match Operator display ' *->'
 
 syntax match ClassName display '\<\([A-Z][a-z0-9]*\)\+\>'
 syntax match ClassName display '\.\@<=\*'
"  highlight link ClassName Identifie
highlight ClassName ctermfg=72
 
 syntax match Constructor display '\(\(public\|protected\|private\)\s\+\)\@<=\([A-Z][a-z0-9]*\)\+\( *(\)\@='
 highlight link Constructor PreProc
 
 syntax match Final '\<[A-Z][A-Z0-9]\+\%(_[A-Z0-9]\+\)*\>'
 highlight Final ctermfg=536
 
syn match javaAnnotation "@\([_$a-zA-Z][_$a-zA-Z0-9]*\.\)*[_$a-zA-Z][_$a-zA-Z0-9]*\>"

