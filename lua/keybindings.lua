local map = vim.keymap.set

map('n', 'ff', '<CMD> Telescope find_files hidden=true <CR>')
map('n', 'fd', '<CMD> Telescope diagnostics <CR>')
map('n', 'fb', '<CMD> Telescope buffers <CR>')
map('n', 'sv', '<CMD> vertical split <CR>')
map('n', 'gd', '<CMD> lua vim.lsp.buf.definition() <CR>')
map('n', 'bn', '<CMD> bn <CR>')
map('n', 'bp', '<CMD> bp <CR>')
