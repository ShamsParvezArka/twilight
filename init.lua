require('base')
require('plugins')
require('lsp')

-- Start status line
require('lualine').setup{
	options = {
		component_separators = { left = '', right = ''},
		section_separators = { left = '', right = ''},
		theme = 'ayu_mirage'
	}
}

-- Start treesitter
require 'nvim-treesitter.configs'.setup{
	ensure_installed = { "c", "cpp", "python", "lua", "vim", "javascript", "bash", "help", "query", "markdown", "markdown_inline"},
	sync_install = true,

	highlight = {
		enable = true
	},

	additional_vim_regex_highlighting = true,
}

-- Start smooth cursor
require('smoothcursor').setup({
	autostart = true,
	cursor = "◽",             -- cursor shape (need nerd font)
	texthl = "SmoothCursor",   -- highlight group, default is { bg = nil, fg = "#FFD400" }
	linehl = nil,              -- highlight sub-cursor line like 'cursorline', "CursorLine" recommended
	type = "default",          -- define cursor movement calculate function, "default" or "exp" (exponential).
	fancy = {
		enable = false,        -- enable fancy mode
		head = { cursor = "◽", texthl = "SmoothCursor", linehl = nil },
		body = {
			{ cursor = "", texthl = "SmoothCursorRed" },
			{ cursor = "", texthl = "SmoothCursorOrange" },
			{ cursor = "●", texthl = "SmoothCursorYellow" },
			{ cursor = "●", texthl = "SmoothCursorGreen" },
			{ cursor = "•", texthl = "SmoothCursorAqua" },
			{ cursor = ".", texthl = "SmoothCursorBlue" },
			{ cursor = ".", texthl = "SmoothCursorPurple" },
		},
		tail = { cursor = nil, texthl = "SmoothCursor" }
	},
	flyin_effect = nil,        -- "bottom" or "top"
	speed = 100,                -- max is 100 to stick to your current position
	intervals = 35,            -- tick interval
	priority = 10,             -- set marker priority
	timeout = 3000,            -- timout for animation
	threshold = 3,             -- animate if threshold lines jump
	disable_float_win = false, -- disable on float window
	enabled_filetypes = nil,   -- example: { "lua", "vim" }
	disabled_filetypes = nil,  -- this option will be skipped if enabled_filetypes is set. example: {"TelescopePrompt","NvimTree" }
})
