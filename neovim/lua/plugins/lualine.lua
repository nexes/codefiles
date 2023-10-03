function lualineConfig()
    require('lualine').setup{
        options = {
            theme = 'nord'
        }
    }
end

return {
    'nvim-lualine/lualine.nvim',
    name = 'lualine',
    dependencies ={
        'nvim-tree/nvim-web-devicons'
    },
    config = lualineConfig,
}
