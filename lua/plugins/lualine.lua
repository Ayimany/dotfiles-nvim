return {
    "nvim-lualine/lualine.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },

    opts = {
        lualine = {
            options = {
                theme = "catppuccin"
            },

            sections = {
                lualine_a = { "filename"               },
                lualine_b = { "filetype"               },
                lualine_c = { "diagnostics"            },
                lualine_x = { "branch", "diff"         },
                lualine_y = { "encoding", "fileformat" },
                lualine_z = { "location"               }
            },

            inactive_sections = {
                lualine_a = { "filename" },
                lualine_b = { "filetype" },
                lualine_c = { },
                lualine_x = { },
                lualine_y = { },
                lualine_z = { "location" }
            },
        }
    },

    config = function(plugin, opts)
        require("lualine").setup(opts.lualine)
    end
}

