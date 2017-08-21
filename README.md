# zsh-gvm

This packages [moovweb/gvm][1] as a zsh-style plugin.

This plugin will:

1. Automatically install gvm using the [gvm-installer][2] script
2. Set gvm up in your shell
3. Install the latest release of golang
4. Add [completions][3] for gvm

[1]: https://github.com/moovweb/gvm
[2]: https://github.com/moovweb/gvm/blob/master/binscripts/gvm-installer
[3]: https://github.com/yerinle/zsh-gvm/blob/master/_gvm
[4]: http://zsh.sourceforge.net/

## Requirements

* [ZSH][4] >= 4.3.0

## Install

### antigen

    antigen bundle twang817/zsh-gvm

### zgen

    zgen load twang817/zsh-gvm
    
### antibody

    antibody bundle twang817/zsh-gvm
    