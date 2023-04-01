local lspkind = require("lspkind")
require'cmp'.setup {
	formatting = {
		format = lspkind.cmp_format({
			wirth_text = false,
			mode = 'text_symbol',
			max_width = 50,
			ellipsis_char = '...',
			preset = 'default'
		})
	},
	sources = {
		{ name = 'nvim_lsp' }
	}
}

local lspconfig = require("lspconfig")
lspconfig.clangd.setup {}
lspconfig.cssls.setup {}
lspconfig.html.setup {}
lspconfig.ltex.setup {}
lspconfig.lua_ls.setup {}
lspconfig.marksman.setup {}
lspconfig.pyright.setup {}
lspconfig.tsserver.setup {}

