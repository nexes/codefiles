function configBufferline()
    require('bufferline').setup{
        options = {
            separator_style = "thin",
            indicator = {
                style = 'underline'
            },
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "Explorer",
                    separator = true
                }
            }
        },
    }
end

return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = configBufferline,
}
