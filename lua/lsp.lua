local lsp = require('lsp-zero').preset({})
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local navic = require("nvim-navic")

lsp.on_attach(function(client, bufnr)
	lsp.default_keymaps({buffer = bufnr})
end)

--require("lspconfig").clangd.setup {
--    on_attach = function(client, bufnr)
--		navic.attach(client, bufnr)
--		vim.keymap.set("n", "K", vim.lsp.buf.hover, {buffer = 0})
--    end
--}

cmp.setup({
	sources = {
		{name = 'path'},
		{name = 'nvim_lsp'},
		{name = 'buffer', keyword_length = 3},
		{name = 'luasnip', keyword_length = 2},
	},
	mapping = {
		['<C-Space>'] = cmp.mapping.complete(),
		['<Tab>'] = cmp_action.luasnip_supertab(),
		['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
	},
	formatting = {
		fields = {'kind', 'abbr'},
		format = require('lspkind').cmp_format({
			mode = "symbol",
			maxwidth = 20,
			ellipsis_char = '~',
		}),
	},
	window = {
		--completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered()
	}
})

lsp.setup()
