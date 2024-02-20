return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim"
    },

    config = function()
        local builtin = require('telescope.builtin')
        local wk = require("which-key")

        wk.register({
            ["<leader>ff"] = { builtin.find_files, "File" },
            ["<leader>ft"] = { builtin.live_grep , "Text" },
            ["<leader>fb"] = { builtin.buffers   , "Open buffers" },

            ["<Leader>fF"] = { "<cmd>Telescope file_browser<cr>", "File browser" },

            ["<leader>ht"] = { builtin.help_tags , "Help tags" },

        })

    end

}
