require("base")
require("plugins")
require("lsp")

require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup()
require("lspkind")

-- require('lualine').setup{
-- 	options = {
-- 		component_separators = { left = '', right = ''},
-- 		section_separators = { left = '', right = ''},
-- 		theme = 'ayu_mirage'
-- 	}
-- }

require 'nvim-treesitter.configs'.setup{
	ensure_installed = { "c", "cpp", "python", "lua", "vim", "javascript", "bash", "help", "query", "markdown", "markdown_inline"},
	sync_install = true,

	highlight = {
		enable = true
	},

	additional_vim_regex_highlighting = true,
}

