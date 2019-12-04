# :s/IDE/Vim/g
## Installation
	cd 
	git clone https://github.com/edugomez102/dotfiles
	mv dotfiles .vim
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
- open vim console`::`
- repeat last console command `Q`
- change last character in line `S`
- insert ; at end of line `;`
### Plugin mappings Normal node
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

## Upgraded syntax highlighting
- java
- C++
- C
## Installed Plugins worth mentioning
### Ultisnips
snippets are defined in the Ultisnips/ folder
- to trigger snippet `tab`
- jump forward trigger`tab`
- jump backward trigger`Ctrl h`
### WakaTime
code timetracker, account needed, diasble it in vimrc this way(add `"`):  
`"Plugin 'wakatime/vim-wakatime'`

