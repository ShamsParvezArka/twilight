--[[
	Neovim Plug-in collection for better productivity
	Author: Shams Parvez Arka <parvez6826@gmail.com>
--]]

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Plug-in manager initializatoin
	use 'wbthomason/packer.nvim'
	use "nvim-lua/plenary.nvim"

	-- Git integration 
	use "tpope/vim-fugitive"
	use "mhinz/vim-signify"

	-- VScode like sidebar & Fuzzy finding
	use "preservim/nerdtree"
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- Markdown live preview
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})

	-- Icon pack 
	use 'ryanoasis/vim-devicons'
	use 'nvim-tree/nvim-web-devicons'

	-- Auto closing brackets
	use {
		"windwp/nvim-autopairs",
		config = function() require("nvim-autopairs").setup {} end
	}

	-- Status line 
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- Bufferline
	use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}

	-- Tab integration
	use { 'alvarosevilla95/luatab.nvim', requires='kyazdani42/nvim-web-devicons' }

	-- Improved syntax heighlighting
	use {'nvim-treesitter/nvim-treesitter'}
	use 'norcalli/nvim-colorizer.lua'

	-- Complete LSP setup
	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		requires = {
			{'neovim/nvim-lspconfig'},
			{
				'williamboman/mason.nvim',
				run = function()
					pcall(vim.cmd, 'MasonUpdate')
				end,
			},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},

			-- VScode like pictograms
			{'onsails/lspkind-nvim'}
		}
	}

	-- Simple winbar integration 
	use {
		"SmiteshP/nvim-navic",
		requires = "neovim/nvim-lspconfig"
	}

	-- Colorscheme
	use 'catppuccin/vim'
	use "rebelot/kanagawa.nvim"
	use 'lifepillar/vim-solarized8'
	use 'Mofiqul/vscode.nvim'
	use "morhetz/gruvbox"
	use 'Mofiqul/dracula.nvim'
	use {'srcery-colors/srcery-vim', as = 'srcery'}
	use 'pineapplegiant/spaceduck'
	use 'tanvirtin/monokai.nvim'
	use 'nyoom-engineering/oxocarbon.nvim'
end)
