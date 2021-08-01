require('telescope').setup {
    -- defaults = {
    --     layout_strategy = "vertical",
    --     prompt_position = "top",
    --     preview_cutoff = 90
    -- }
}

-- open find files like vscode
vim.api.nvim_set_keymap(
    'n', 
    '<C-p>',
    '<cmd>lua require(\'telescope.builtin\').find_files()<cr>',
    {noremap = true}
)
