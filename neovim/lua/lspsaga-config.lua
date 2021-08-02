-- lspsaga default setup
require'lspsaga'.init_lsp_saga{
    code_action_prompt = {
        enable = false
    }
}

vim.api.nvim_set_keymap('n', 'K', ':Lspsaga hover_doc<CR>',
                        {noremap = true, silent = true}
)
vim.api.nvim_set_keymap('n', '<leader>ld', ':Lspsaga show_line_diagnostics<CR>',
                        {noremap = true, silent = true}
)
vim.api.nvim_set_keymap('n', '<leader>.', ':Lspsaga signature_help<CR>',
                        {noremap = true, silent = true}
)
