function telescopeConfig()
    local tele = require('telescope')
    local builtin = require('telescope.builtin')

    tele.setup {
        pickers = {
            find_files = {
                theme = 'dropdown',
                previewer = false,
                layout_config = {
                    center = { height = 0.55 },
                    anchor = "N"
                },
            },
            buffers = {
                theme = 'dropdown',
                previewer = false,
                layout_config = {
                    center = { height = 0.35 },
                    anchor = "N"
                },
            },
            git_files = {
                theme = 'dropdown',
                previewer = false,
                layout_config = {
                    center = { height = 0.55 },
                    anchor = "N"
                },
            },
            live_grep = {
                theme = 'dropdown',
                layout_config = {
                    center = { height = 0.45 },
                    scroll_speed = 15,
                },
            },
            diagnostics = {
                theme = 'ivy',
                previewer = false,
            },
            lsp_document_symbols = {
                theme = 'dropdown',
                layout_config = {
                    center = { height = 0.45 },
                    scroll_speed = 15,
                },
            }
        }
    }

    vim.keymap.set('n', '<leader>b', builtin.buffers)
    vim.keymap.set('n', '<C-p>', builtin.git_files)
    vim.keymap.set('n', '<C-f>', builtin.live_grep)
    vim.keymap.set('n', '<C-o>', builtin.lsp_document_symbols)
    vim.keymap.set('n', '<C-S-m>', builtin.diagnostics)
end

return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    config = telescopeConfig,
}
