function configMason()
    local mason = require('mason')
    local mason_lspconfig = require('mason-lspconfig')

    mason.setup {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    }

    mason_lspconfig.setup {
        ensure_installed = {
            'clangd',
            'cmake',
            'lua_ls',
            'rust_analyzer',
        }
    }
end

return {
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
    },
    lazy = false,
    config = configMason
}
