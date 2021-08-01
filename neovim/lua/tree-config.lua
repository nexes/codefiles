-- nvim tree settings

-- open nvim tree
vim.api.nvim_set_keymap(
    'n', 
    '<C-b>',
    ':NvimTreeToggle<cr>',
    {noremap = true}
)
