require("base")
require("plugins")
require("lsp")
require("lspkind")
require("luatab").setup()

require 'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "cpp", "python", "lua", "rust", "vim", "javascript", "json", "markdown", "markdown_inline"},
	sync_install = true,
	highlight = {
		enable = true
	},
	additional_vim_regex_highlighting = true,
}
