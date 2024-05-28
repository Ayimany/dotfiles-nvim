return {
    "nvim-tree/nvim-tree.lua",

    opts = {
        tree = {
            filters = {
                dotfiles = true
            } 
        },

        keybinds = {
            ["<leader>Ft"] = { "<cmd>NvimTreeToggle<cr>", "Toggle tree" }
        }
    },

    config = function(plugin, opts)
        require("nvim-tree").setup(opts.tree)
        require("which-key").register(opts.keybinds)
    end
}

