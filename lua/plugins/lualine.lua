return {
    "nvim-lualine/lualine.nvim",
    name = "lualine",

    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },

    opts = {
        options = {
            theme = "catppuccin"
        },

        sections = {
            lualine_a = { "filename" },
            lualine_b = { "filetype" },
            lualine_c = { "diagnostics" },
            lualine_x = { "branch", "diff" },
            lualine_y = { "encoding", "fileformat" },
            lualine_z = { "location" }
        },

        inactive_sections = {
            lualine_a = { "filename" },
            lualine_b = { "filetype" },
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = { "location" }
        },
    }
}

