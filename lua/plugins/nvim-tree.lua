return {
    "nvim-tree/nvim-tree.lua",
    name = "tree",

    opts = {
        filters = {
            dotfiles = true
        }
    },

    config = function()
        local wk = require("which-key")

        wk.register({
            ["<leader>Ft"] = { "<cmd>NvimTreeToggle<cr>", "Toggle tree" }
        })
    end
}

