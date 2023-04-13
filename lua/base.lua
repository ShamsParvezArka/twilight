local set = vim.opt
local map = vim.keymap

-- Basic setup
set.guicursor = ""
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

-- Key bindings
map.set('n', 'ff', ':Telescope find_files hidden=true<CR>')
map.set('n', 'fb', ':Telescope buffers<CR>')
map.set('n', '<M-m>', ':NERDTreeToggle<CR>')
map.set('n', 'sv', ':vertical split<CR>')
map.set('n', '<C-s>', ':w<CR>')

-- Colorscheme
vim.cmd("colorscheme gruber")
vim.cmd("let g:syntastic_vim_checkers = ['vint']")
vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
