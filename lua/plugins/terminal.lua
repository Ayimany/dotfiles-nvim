return {
    "akinsho/toggleterm.nvim",

    opts = {
        toggleterm = { },

        wk_binds = {
            ["<leader><leader>"] = { "<cmd>ToggleTerm<cr>", "Toggle Terminal" }
        }
    },

    config = function(plugin, opts)
        require("toggleterm").setup(opts.toggleterm)
        require("which-key").register(opts.wk_binds)

    end
}
