local set = vim.opt
local cmd = vim.cmd

-- Basics
set.encoding = 'UTF-8'
set.clipboard:append('unnamedplus')
set.wrap = true
set.modifiable = true
set.termguicolors = true
set.mouse:append('a')
set.title = true
set.rnu = true
set.nu = true
set.tabstop = 4
set.shiftwidth = 4
set.autoindent = true
set.smartindent = true
set.undofile = true
set.scrolloff = 8
set.pumheight = 10
set.colorcolumn = '80'

-- Colorscheme
cmd("colorscheme gruvbox")
cmd("let g:syntastic_vim_checkers = ['vint']")
cmd("hi FloatBorder guibg=None guifg=None")
cmd("au ColorScheme * hi Normal ctermbg=None")
