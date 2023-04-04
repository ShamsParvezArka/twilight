<h1 align="center">
	Twilight
</h1>

## 🎴 **Preview**
![](assets/splash_screen.png)
![](assets/telescope.png)
![](assets/tree_lsp.png)

## ⚡ **Requirements**
* [Neovim 0.8+](https://github.com/neovim/neovim/releases/tag/stable)
* [Lua](https://www.lua.org/)
* [Node](https://nodejs.org/en)
* [Rust](https://www.rust-lang.org/)
* [Python3](https://www.python.org/)
* `xclip` - Universal clipboad support
* `logo-ls` - Integrated icons with `ls` command 

## 🗺️ **Project Layout**
```
nvim
├── colors
│   └── gruber.vim
├── init.lua
├── lua
│   ├── base.lua
│   ├── lsp.lua
│   └── plugins.lua
└── plugin
    └── packer_compiled.lua
```

## 📟 **Terminal setup**
* Z shell setup:
	* Install `zsh` and set it as default shell
	* Install `Oh My Zsh` via wget
	```
	sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
	```
* Terminal Font: [FiraCode](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.3.3/FiraCode.zip)
* Font size: **17**
* Colorscheme: [Brogrammer](https://gogh-co.github.io/Gogh/)
* Background: **`#1C1C1C`**
	> **n.b** modifying terminal background is needed to match with the neovim background color.

## 🛠️ **Installation**
* First things first, make the installation script `install.sh` executable.
	```shell
	chmod +x install.sh 
	```
* Install `Packer.nvim`

	```shell		
	git clone --depth 1 https://github.com/wbthomason/packer.nvim\
	~/.local/share/nvim/site/pack/packer/start/packer.nvim
	```

* Run the installer.

	```
	./install.sh
	```
	> `install.sh` will spin up your neovim and zsh


## 📦 **Basic setup**

**Inside Neovim**

* Install plugins 
	* Enter `:PackerInstall`
* Install LSP servers
	* Enter `:Mason` and select the lsp servers you want to install
* Install treesitter language parsers
	* Enter `:TSInstall <language_persers, ... >`
	> you can find all treesitter language parsers name [here](https://github.com/nvim-treesitter/nvim-treesitter)

**Outside Neovim**

* Copy the splash screen script
	```sehll
	cp dashboard.lua $HOME/.local/share/nvim/site/pack/packer/start/startup.nvim/lua/startup/themes/dashboard.lua
	```

