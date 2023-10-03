function treeSitterConfig()
    require('nvim-treesitter.configs').setup {
	ensure_installed = {'c', 'cpp', 'rust', 'lua', 'python'},
	sync_install = false,
        highlight = { enable = true },
	indent = { enable = true }
    }
end

return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = treeSitterConfig
}
