-- disable netrw for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

-- set numbers
vim.opt.number = true

-- tabs
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.smartindent = true
vim.opt.expandtab = true

-- disable wordwrap
vim.opt.wrap = false

-- turn off swap/backup file
vim.opt.swapfile = false
vim.opt.backup = false

-- remove the tilda '~' from blank lines
vim.opt.fillchars = { eob = " " }
