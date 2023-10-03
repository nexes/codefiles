function configTree()
    require("nvim-tree").setup {
        filters = {
	    dotfiles = true,
	}
    }

    vim.keymap.set('n', '<C-b>', vim.cmd.NvimTreeToggle)
end

return {
   "nvim-tree/nvim-tree.lua",
   version = "*",
   lazy = false,
   dependencies = {
       "nvim-tree/nvim-web-devicons"
   },
   config = configTree,
}
