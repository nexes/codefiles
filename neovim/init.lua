if vim.g.vscode then
else
    require('config.options')
    require('config.keymaps')

    require('lazy-init')
end
