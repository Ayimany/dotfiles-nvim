return {
    "nvim-telescope/telescope.nvim",
    name = "telescope",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim"
    },

    config = function()
        local wk = require("which-key")

        wk.register({
            ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "File" },
            ["<leader>ft"] = { "<cmd>Telescope live_grep<cr>", "Text" },
            ["<leader>fb"] = { "<cmd>Telescope buffers<cr>", "Open buffers" },

            ["<Leader>fF"] = { "<cmd>Telescope file_browser<cr>", "File browser" },

            ["<leader>ht"] = { "<cmd>Telescope help_tags<cr>", "Help tags" },
        })
    end
}

