-- leader key mapped to space
vim.g.mapleader = " "

-- save
vim.keymap.set('n', '<C-s>', vim.cmd.write)

-- move buffers
vim.keymap.set('n', '<C-right>', vim.cmd.bnext)
vim.keymap.set('n', '<C-left>', vim.cmd.bprevious)
