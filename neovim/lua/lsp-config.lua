-- c++ language server
require'lspconfig'.clangd.setup{}

-- rust language server
require'lspconfig'.rust_analyzer.setup{}

-- vim.lsp.diagnostic.set_loclist()
local nvim_lsp = require('lspconfig')

vim.api.nvim_set_keymap('n',
                        '<leader>q',
                        '<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>',
                        {noremap = true, silent = true}
)
