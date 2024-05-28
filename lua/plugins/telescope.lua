return {
    "nvim-telescope/telescope.nvim",

    dependencies = {
        "nvim-telescope/telescope-file-browser.nvim",
        "nvim-lua/plenary.nvim"                     ,
    },

    opts = {
        wk_binds = {
            ["<leader>ff"] = { "<cmd>Telescope find_files<cr>"  , "File" }         ,
            ["<leader>ft"] = { "<cmd>Telescope live_grep<cr>"   , "Text" }         ,
            ["<leader>fb"] = { "<cmd>Telescope buffers<cr>"     , "Open buffers" } ,
            ["<Leader>fF"] = { "<cmd>Telescope file_browser<cr>", "File browser" } ,
            ["<leader>ht"] = { "<cmd>Telescope help_tags<cr>"   , "Help tags" }    ,
        }
    },

    config = function(plugin, opts)
        require("which-key").register(opts.wk_binds)
    end
}

