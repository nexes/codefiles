-- start lualine plugin
require('lualine').setup{
    options = {
        theme = 'wombat'
    },
    sections = {
        lualine_x = {'fileformat', 'filetype'},
        lualine_y = {}
    }
    -- tabline = {
    --     lualine_a = {},
    --     lualine_b = {'branch'},
    --     lualine_c = {'filename'},
    --     lualine_x = {},
    --     lualine_y = {},
    --     lualine_z = {}
    -- }
}
