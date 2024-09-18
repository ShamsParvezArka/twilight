local lsp_zero = require('lsp-zero').preset({})
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

lsp_zero.on_attach(
	function(_, bufnr)
		lsp_zero.default_keymaps({ buffer = bufnr })
	end
)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = false,
		signs = true,
		update_in_insert = false
    }
)

cmp.setup({
	sources = {
		{ name = 'path' },
		{ name = 'nvim_lsp' },
		{ name = 'buffer', keyword_length = 3 },
		-- { name = 'luasnip', keyword_length = 2 },
	},
	mapping = {
		['<C-Space>'] = cmp.mapping.complete(),
		['<Tab>'] = cmp_action.luasnip_supertab(),
		['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
	},
	formatting = {
		fields = { "kind", "abbr", "menu" },
		format = require('lspkind').cmp_format({
			mode = "symbol_text",
			maxwidth = 50,
			ellipsis_char = '...',
		}),
	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered()
	}
})

lsp_zero.setup()
