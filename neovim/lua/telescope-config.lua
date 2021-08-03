require('telescope').setup {
    defaults = {
        layout_strategy = "vertical",
    --     prompt_position = "top",
    --     preview_cutoff = 90
        file_ignore_patterns = {"node_modules/*", "target/*"}
    }
}

-- open find files like vscode
vim.api.nvim_set_keymap(
    'n', 
    '<C-p>',
    '<cmd>lua require(\'telescope.builtin\').find_files()<cr>',
    {noremap = true, silent = true}
)

vim.api.nvim_set_keymap(
    'n', 
    '<leader>td',
    '<cmd>lua require(\'telescope.builtin\').lsp_workspace_diagnostics()<cr>',
    {noremap = true, silent = true}
)
