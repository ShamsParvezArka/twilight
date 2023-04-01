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

	-- Smooth cursor
	use { 'gen740/SmoothCursor.nvim',
	config = function()
		require('smoothcursor').setup() end
	}

	-- Status line 
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}

	-- VScode like pictograms
	use {'onsails/lspkind-nvim'}

	-- Improved syntax heighlighting
	use {'nvim-treesitter/nvim-treesitter'}
	use 'norcalli/nvim-colorizer.lua'

	-- Complete LSP setup
	use {
			-- LSP servers
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'}, 
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lua'},
			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
	}

	-- Neovim splash screen
	use {
		"startup-nvim/startup.nvim",
		requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
		config = function()
			require"startup".setup()
		end
	}

end)
