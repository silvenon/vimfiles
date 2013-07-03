Mislav's vim configuration
==========================

Thanks to these guys:

* [Gary Bernhardt](http://destroyallsoftware.com),
* [Drew Neil](http://vimcasts.org),
* [Tim Pope](http://tbaggery.com),
* and the [Janus project](https://github.com/carlhuda/janus).

My configuration uses [Pathogen](https://github.com/tpope/vim-pathogen) and git submodules.
(But you don't need to care about any of that.)

## Installation:

Prerequisites: ruby, git.

1. Move your existing configuration somewhere else:  
   `mv ~/.vim* ~/.gvim* my_backup`
2. Clone this repo into ".vim":  
   `git clone https://github.com/mislav/vimfiles ~/.vim`
3. Go into ".vim" and run "rake":  
   `cd ~/.vim && rake`

This will install "~/.vimrc" and "~/.gvimrc" symlinks that point to
files inside the ".vim" directory.

## Features:

### `vimrc`

* 2 spaces, no tabs
* incremental, case-insensitive search
* vertical split goes right, horizontal split goes below
* cursor keys for movement are disabled!

* `<CR>` - remove highlighting after search
* `<Space>` - toggle current fold
* `<C-j/k/h/l>` - switch between splits (no need to prepend `<C-w>`)
* `Q` - format lines
* `:KillWhitespace` - strip trailing whitespace

### File switching (Command-T)

* `,,` alternates between two most recent buffers
* `,f` - jump to file:
  * `,F` - search in directory of current buffer
  * `,b` - search buffer list
  * `,gl` - search in `lib/`
  * `,gt` - search tags
  * `<C-s>`,`<C-CR>` - open the selected file in a new split window
  * `<C-v>` - open the selected file in a new vertical split window
  * `<C-t>` - open the selected file in a new tab
  * `<C-j>` - select next file in the file listing
  * `<C-k>` - select previous file in the file listing

### Ack

* `:Ack -w foo_bar`
* `:Ack!` - search, but don't jump to first match
* `:AckFromSearch`
* `:AckAdd` - append to existing quickfix list

In the quickfix window:

* `o` - open file
* `go` - preview file, i.e. keep focus in quickfix window
* `t` (`T`) - open in a new tab (silently)
* `h` (`H`) - open in horizontal split (silently)
* `v` (`gv`) - open in vertical split (silently)

In the normal buffer:

* `:cn[ext]`/`:cN/:cp[revious]` - jump to the next/previous match
* `]q`/`[q` - same as above, with Unimpaired
* `:ccl` - close the quickfix window
* `:col[der]`/`:cnew[er]` - show results of previous/next search

### Surround

* `cs"'` - change string from double to single quotes
* `ds(` - delete surrounding parentheses
* `ysiW]` - surround current WORD with square brackets
* `ysst` - surround current line in a HTML tag
* `ysip<c-t>` - nest current paragraph in a HTML tag

Visual mode: `S`. Insert mode: `<c-s>`.

Surround + rails.vim:

* `-` → `<% -%>`
* `=` → `<%= %>`
* `#` → `<%# %>`
* `e` - nest block and append `end` keyword
* `E` - like `e`, but prompt for text to prepend before block

### Commentary

* `gc{motion}` - comment/uncomment lines that {motion} moves over
* `gcc` - comment/uncomment [count] lines
* `{Visual}gc` - comment/uncomment the highlighted lines
* `gcu` - uncomment the current and adjacent commented lines

### ruby.vim

Motions:

* `]m` / `[m` - next / previous method
* `]M` / `[M` - end of method definition
* `]]` / `[[` - next / previous class/module
* `][` / `[]` - end of class/module

Text objects:

* `am` - a method
* `im` - inner method
* `aM` - a class
* `iM` - inner class

### CoffeeScript

* `:[range]CoffeeCompile [vert]` - compile JavaScript into new buffer
* `:CoffeeCompile watch [vert]` - open auto-updating JavaScript buffer
* `:[range]CoffeeLint` (needs `coffeelint`)
* `:[range]CoffeeRun` - run the resulting JavaScript

### matchit.vim

`%` alternates between matching HTML tags, class/control flow statements and
matching `end` in Ruby, and more. Also works in visual mode.

### Tabular

In visual mode:

* `:Tabularize assignment`
* `:Tabularize argument_list`
* `:Tabularize /=>`

### Fugitive

* `:Gcommit`
* `:Gstatus`
  * jump between lines that represent files with `<c-n>`, `<c-p>`
  * `-` - add/reset file (also in visual mode)
  * `<Enter>` - open current file in the window below
  * `o`/`S` - `:Gsplit`/`:Gvsplit`
  * `p` - add/reset current file with `--patch`
  * `D` - `:Gdiff`
  * `c[v]c` - `:Gcommit [--verbose]`
  * `ca`/`cA` - `--append` / reuse message
* `:[range]Gbrowse! -` - copy GitHub URL for code that's currently selected
* `:[range]Gblame`
  * `q`/`gq` - close blame and return to blamed window / work tree version
  * `<CR>` - q, then open commit
  * `o`/`O` - open commit in horizontal split / new tab
  * `-` - reblame at commit
  * `P` - reblame at parent commit

* `:Gedit feature:%` - version of the current file in the "feature" branch
* `:Gwrite` - `add %`
* `:Gread` - `checkout %` (also the bailout command after browsing git objects)
* `:Gremove` - `rm %`
* `:Gmove <dest>` - `mv % <dest>`

* `:Glog` - load past versions of current file into the quickfix list
* `:Glog --` - load all commits into the quickfix list
* `:Glog -- %` - load only commits that touch the current file
* `:Glog --grep={text} --` - only commits that have "text" in the message
* `:Glog -S{text} --` - only commits that have "text" in the diff
* `:Ggrep {pattern} [branch]`

In git objects:

* `<Enter>` - jump to revision under cursor
* `o`/`S`/`O` - jump to revision in a new split / vertical split / tab

In vimdiff view:

* `[c`/`]c` - previous/next changeset
* `:dp`/`:do` - `:diffput`/`:diffget` - stage/checkout hunk
* `:Gwrite`/`:Gread` - stage/checkout file
* `:do //2`/`:do //3` - resolve conflict using the version from target/merge branch
* `:diffu[pdate]` - refresh diff highlighting
* `:on[ly]`,`<C-w>o` - close windows other than the current one

### Unimpaired

* `[a`/`]a` - `:previous`/`:next`
* `[A`/`]A` - `:first`/`:last`
* `[q`/`]q` - `:cprev`/`:cnext`
* `[Q`/`]Q` - `:cfirst`/`:clast`

* `[n`/`]n` - previous/next conflict marker
* `[<Space>`/`]<Space>` - add blank lines above/below the cursor

* `[o{opt}`/`]o{opt}`/`co{opt}` - turn on/turn off/toggle option:
  * `h` - "hlsearch"
  * `i` - "ignorecase"
  * `s` - "spell"
  * `w` - "wrap"

* `yp/P/o/O/I/A` enters insert mode as with `a/i/o/O/I/A` and sets `paste`.
  Leaving insert mode sets 'nopaste' automatically.

### Eunuch

* `:Rename[!]`
* `:SudoWrite`
* `:Remove[!]`
* `:Find[!] {args}` - run `find` and load results into quickfix
* when you create a file that starts with a shebang, it gets `chmod +x`
  automatically on first save!

### Scriptease

* `:Vedit` - quickly open a Vim runtime file
  * `:Vsplit`
  * `:Vvsplit`
  * `:Vtabedit`
  * `:Vpedit`
  * `:Vread`
* `:Runtime` - reload runtime files
* `g!` - eval a motion or selection as VimL and replace it with the result

Example:

    :Vsp s/pd<Tab>
