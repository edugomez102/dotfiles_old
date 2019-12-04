# con Vim a *REVENTAR*
## Installation
	cd 
	git clone https://github.com/edugomez102/dotfiles
	mv dotfiles .vim
## Notas
- Al final he instalado Vundle como gestor de plugins pero esto sigue siendo Vim vanilla, vale?
- Snippets con UltiSnips al final
## Mappings
### Normal mode
- `<leader>` is `,`
- `Ctrl j` down 10 lines
- `Cntl k ` up 10 lines
- `Ctrl p` goto buffer(with buffer list)
- quick save `,w`
- close all ´,qa`
- delete buffer but not window `,bd`
- find in folder `,j`
- next buffer `,l`
- previous buffer `,h`
- opem vim console`::`
## Plugin mappings Normal node
- toggle line comment `gcc`
- toggle comment motion `gc{motion}`
- open MiniBufExplorer `,t`
### Insert mode
- skip close bracket `shift tab` **super useful**  
(imagine `^` is the cursor) works with )>]}"'
<pre>
(foo)    --->  (foo)
    ^	            ^
</pre>
- delete word in cursor `Ctrl e`
### Visual mode
- find selected area `//` 



## Wakatime que le pasa
está instalado el plugin de wakatime 
basta con darle a <ESQ> cada vez que entres a vim para ignorarlo
si no quieres que aparezca el mensaje que pide la clave de wakatime
basta con poner un " en el vimrc, que quede tal que asi
	`"Plugin 'wakatime/vim-wakatime'`

