local lsp = require('lsp-zero').preset({
	name = 'minimal'
})
local lspkind = require("lspkind")
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

cmp.setup({
	sources = {
		{name = 'path'},
		{name = 'nvim_lsp'},
		{name = 'buffer', keyword_length = 3},
		{name = 'luasnip', keyword_length = 2},
	},

	mapping = {
		['<Tab>'] = cmp_action.luasnip_supertab(),
		['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
	},

	formatting = {
		fields = {'abbr', 'kind', 'menu'},
		format = require('lspkind').cmp_format({
			mode = 'symbol',
			maxwidth = 50,
			ellipsis_char = '...',
		})
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered()
	}
})

lsp.setup()
