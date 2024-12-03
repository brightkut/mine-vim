# Mine-Nvim

  This is my personal project for storing configurations and installation instructions for using Neovim on my macOS system. The aim is to make it easier for me to use, and it can also serve as a resource for others who might want to learn or benefit from it.


###### Setup Java to allow use multiple version in terminal 

```
#Javaa
# Alias for Java 22
alias java22='export JAVA_HOME=~/Library/Java/JavaVirtualMachines/openjdk-22.0.1/Contents/Home && java -version'

# Alias for Java 21
alias java21='export JAVA_HOME=~/Library/Java/JavaVirtualMachines/corretto-21.0.3/Contents/Home && java -version'

# Alias for Java 17
alias java17='export JAVA_HOME=~/Library/Java/JavaVirtualMachines/corretto-17.0.6/Contents/Home && java -version'

# Alias for Java 11
alias java11='export JAVA_HOME=~/Library/Java/JavaVirtualMachines/corretto-11.0.18/Contents/Home && java -version'

# Alias for Java 8
alias java8='export JAVA_HOME=~/Library/Java/JavaVirtualMachines/corretto-1.8.0_392/Contents/Home && java -version'
```

###### Prerequisite
1. `brew install ripgrep`
2. `brew install fd`
3. `brew install lazygit`

###### Step
1. `cd ~`
2. Clone git `lazy-vim` from this documentation [lazy-vim-doc](https://www.lazyvim.org/installation)
3. Run `nvim` to install plugins
4. Create `java/init.lua` inside the plugins
5. Copy configuration from this https://github.com/nvim-java/starter-lazyvim and paste in `init.lua`
6. Edit path `jdk` in `java/init.lua`
7. rerun `nvim` again to install
8. Run command `LazyExtras` and enable `dap.core`


###### Issue
1. If you found issue mentioned about `luarocks` run command `brew install luarocks`
###### Lazy Git
1. `brew install lazygit`
2. Create `config.yml` in `~/Library/Application Support/lazygit/`
3. Add this configuration [lazygit-config](https://github.com/jesseduffield/lazygit/blob/master/docs/Config.md)

###### Keymap

Default keymap of lazy vim (default)[https://www.lazyvim.org/configuration/general#keymaps]

** General **
	1. ct or dt + 'character' -> change or delete until that character(not remove character)
	2. D -> Delete until end of line
	3. * -> go to the word that same as our cursor
	4. f + 'character' -> go to the character (in that line)
	5.1 use with ; to go to next match
	6. ~ -> change case (from lower to upper, upper to lower)
	7. :%s/oldvalue/newvalue/g -> change all the name in current file

** Code **
	1. leader key + gd -> Go to document of this code.
	2. leader key + xx -> Show diagnostic
	6. leader key + ca -> Open code action for the function or variable
	8. `]t` -> Next TODO comment
	9. `[t` -> Previous TODO comment
	10. vaw or viw -> hover whole word
	11. va + bracket(', " , {) -> hover scope

** Search **
	1. leader key + ff -> find files
	2. leader key + sg -> search live grep
	3. leader key + sb -> search current buffer
	4. leader key + sr -> search and replace all 
	5. leader key + sk -> search key map
	6. leader key + sw -> search word

** Explorer ** 
	1. leader key + e -> open explorer

** Tab **
	1. leader key + tn -> open new tab from current file
	2. `]b` -> go to next tab 
	3. `[b`-> go to previous tab
	4. leader key + bd -> close current tab

** Window **
	1. leader key + sv -> open split vertical
	2. leader key + sh -> open split horizontal
	3. leader key + sx -> close split window
	4. leader key + sm -> maximize split window

** Terminal **
	1. leader key + fT -> open terminal
	   
** Git **
	1. leader key + gb -> toggle gitblame
	   
** Debug **
	1. leader key + bb -> mark break point
	2. leader key + dc -> run debug mode 
	3. leader key + dj -> step over
	4. leader key + dk -> step in
	5. leader key + do -> step out
	6. leader key + dt -> to terminate debug

** Run Java Unit test **
  1. leader key + jdc -> run test debug class
  2. leader key + jdm -> run test debug method
  3. leader key + jrc -> run test class
  4. leader key + jrm -> run test method
  5. leader key + jvr -> view unit test report

###### Script To Backup Existing Neovim
```
# Backup your existing Neovim configuration
mv ~/.config/nvim{,.bak}
# Backup your existing Neovim cache/state (optional but recommended)
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

