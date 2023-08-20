<div  align="center">
    <img src="logo.png" alt="Neovim logo" width="250">
    <h1> 🔥 My Primary Neovim Config 🔥 </h1>
</div>

#### You can consider this configuration as your starting point, but always try to understand the technology you want to use. Vim is beautiful because you can make it for yourself! 😊

> **Note**
>
> Config files fully created with lua!

### Rest in peace, dear [Bram Moonlenaar](https://vimhelp.org/version9.txt.html#Bram-Moolenaar); we will never forget you…

## Requirements Packages:
- Install [Neovim](https://neovim.io/)
- Install [NodeJS (with npm)](https://nodejs.org/en/)
- Install [fuzzy finder](https://github.com/junegunn/fzf)
- Install [The Silver Searcher](https://github.com/ggreer/the_silver_searcher)
- Install [ripgrep](https://github.com/BurntSushi/ripgrep)
- Install [Ctags](https://github.com/universal-ctags/ctags)
- Install [Nerd Fonts](https://www.nerdfonts.com/)

If your system runnig on MacOS i highly recommend that use these terminals (True Colors):
- [iTerm2](https://iterm2.com/) - My Recommend
- [Warp](https://www.warp.dev/) 

I am currently run on MacOS and these command will help you to install all the requirements:

```bash
brew install neovim
```
```bash
brew install node
```
```bash
brew install fzf
```
```bash
brew install the_silver_searcher
```
```bash
brew install ripgrep
```
```bash
brew install ctags
```
```bash
brew install --cask iterm2
```
---
## Plugins:

### Plugin Manager
- [wbthomason/packer](https://github.com/wbthomason/packer.nvim) - Good package manager

### Lua Dependecies
- [nvim-lua/plenary](https://github.com/nvim-lua/plenary.nvim) - Contains useful lua functions

### Color Theme, Icons & Syntax Highlighter
- [bluz71/vim-nightfly-guicolors](https://github.com/bluz71/vim-nightfly-guicolors) - True color support (You can install what you like)

- [nvim-tree/nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) - Icon for our editor like vscode

- [nvim-treesitter/nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Powerfull syntax Highlighter
    #### treesitter packages, [supported languages](https://github.com/nvim-treesitter/nvim-treesitter#supported-languages)
    - php
    - lua
    - json
    - html

### File explore
- [nvim-tree/nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) - Best file explorer for nvim

### Autocompletion
- [neoclide/coc.nvim](https://github.com/neoclide/coc.nvim) - Great autocompletion engine that i tested
    #### coc packages
    ##### You should install these yourself with command: CocInstall "package-name"
    > example :CocInstall coc-html
    - [coc-html](https://github.com/neoclide/coc-html)
    
    - [coc-json](https://github.com/neoclide/coc-json)
        
    - [coc-emmet](https://github.com/neoclide/coc-emmet)
    
    - [coc-php-cs-fixer](https://github.com/yaegassy/coc-php-cs-fixer)
    
    - [@yaegassy/coc-intelephense](https://github.com/yaegassy/coc-intelephense)

    - [coc-blade](https://github.com/yaegassy/coc-blade)

### Search tools (Fuzzy Finder)
- [nvim-telescope/telescope-fzf-native.nvim](https://github.com/nvim-telescope/telescope-fzf-native.nvim)

- [nvim-telescope/telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

### Auto save & Startup time
- [Pocco81/auto-save.nvim](https://github.com/Pocco81/auto-save.nvim) - Auto Save (You can easily exit wihout save...)

- [dstein64/vim-startuptime](https://github.com/dstein64/vim-startuptime) - See whats going on when nvim starting

### Git integrations
- [gitsigns.nvim](https://github.com/gitsigns.nvim) - One of the best git integrations

### Status line
- [nvim-lualine/lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - Best Status line for neovim

### Comment Tool
- [numToStr/Comment.nvim](https://github.com/numToStr/Comment.nvim) - Greate comment tool

### Tagbar
- [majutsushi/tagbar](https://github.com/majutsushi/tagbar) - Tagbar section for nvim

### Window Management
- [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) - Easy movement on split sections

- [szw/vim-maximizer](https://github.com/szw/vim-maximizer) - Maximize splited section

### Useful Plugins
- [tpope/vim-surround](https://github.com/tpope/vim-surround) - Easily surround any section and do whateve you want

- [inkarkat/vim-ReplaceWithRegister](https://github.com/inkarkat/vim-ReplaceWithRegister) - Replace with register

- [windwp/nvim-autopairs](https://github.com/windwp/nvim-autopairs) - Autopair tags

---

## Feel free and ask all of your questions ❤️

