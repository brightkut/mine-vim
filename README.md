# Mine-Nvim

  This is my personal project for storing configurations and installation instructions for using Neovim on my macOS system. The aim is to make it easier for me to use, and it can also serve as a resource for others who might want to learn or benefit from it.

##### Setup Java to allow use multiple version in terminal

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

##### Step

1. Clone this repository
2. Run shell script `install.sh`. This shell script will install `Starship` , `Ghostty terminal` and `Neovim` automatically
if your computer does not have it. Next it will backup the `Neovim` existing configuration first then move this `Neovim` configuration to your computer
3. Update file `~/.zshrc` follow the configuration in folder `zsh`

##### Keymap


##### TroubleShoot
1. If we found the error about `Could not to retrieve set source path` , run command `mvn eclipse:eclipse` to generate `.classpath`
   because it require this file for `eclipse`
