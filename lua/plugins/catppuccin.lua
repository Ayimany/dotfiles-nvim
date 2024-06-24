return {
    "catppuccin/nvim",
    name = "catppuccin",

    opts = {
        catppuccin = {
            transparent_background = true,

            integrations = {
                lsp_trouble = true,
                treesitter  = true,
                which_key   = true,
                nvimtree    = true,
                gitsigns    = true,
                mason       = true,
                leap        = true,
                cmp         = true,

                telescope   = {
                    enabled = true
                },

                native_lsp  = {
                    enabled = true,

                    virtual_text = {
                        errors      = { "italic" },
                        hints       = { "italic" },
                        warnings    = { "italic" },
                        information = { "italic" },
                    },

                    underlines = {
                        errors      = { "underline" },
                        hints       = { "underline" },
                        warnings    = { "underline" },
                        information = { "underline" },
                    },

                    inlay_hints = {
                        background = true
                    }
                }
            }
        }
    },

    config = function(plugin, opts)
        require("catppuccin").setup(opts.catppuccin)
        vim.cmd.colorscheme("catppuccin")
    end
}
