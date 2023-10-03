function configLSP()
    local lspconfig = require('lspconfig')

    lspconfig.clangd.setup{
        opts = {
            inlay_hints = {
                enabled = false,
            },
        }
    }
    lspconfig.rust_analyzer.setup{}
end

return {
    'neovim/nvim-lspconfig',
    config = configLSP
}
