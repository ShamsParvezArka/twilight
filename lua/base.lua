local set = vim.opt
local map = vim.keymap

-- set.guicursor = ""
set.encoding = 'UTF-8'
set.clipboard:append('unnamedplus')
set.wrap = true
set.modifiable = true
set.termguicolors = true
set.mouse:append('a')
set.title = true
set.rnu = true
set.nu = true
set.tabstop = 2
set.shiftwidth = 2
set.autoindent = true
set.smartindent = true
set.undofile = true
set.scrolloff = 8
set.pumheight = 10

vim.diagnostic.config({
  virtual_text = false,
})

-- Key bindings
map.set('n', 'ff', ':Telescope find_files hidden=true<CR>')
map.set('n', 'fd', ':Telescope diagnostics<CR>')
map.set('n', 'fb', ':Telescope buffers<CR>')
map.set('n', '<M-m>', ':NERDTreeToggle<CR>')
map.set('n', 'sv', ':vertical split<CR>')
map.set('n', '<C-s>', ':w<CR>')

-- Colorscheme
vim.cmd("colorscheme gruber")
vim.cmd("let g:syntastic_vim_checkers = ['vint']")
vim.cmd("let g:monokai_italic=0")
-- vim.cmd("hi Normal guibg=NONE ctermbg=NONE")

vim.cmd("source ~/.config/nvim/lua/lsp.lua")
