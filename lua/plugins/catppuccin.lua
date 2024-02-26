return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,

    opts = {
        transparent_background = true,
        show_end_of_buffer = true,

        integrations = {
            treesitter = true,
            telescope = true,
            gitsigns = true,
            mason = true,
            leap = true,
            cmp = true,

            native_lsp = {
                enabled      = true,

                virtual_text = {
                    errors      = { "italic" },
                    hints       = { "italic" },
                    warnings    = { "italic" },
                    information = { "italic" }
                },

                underlines   = {
                    errors      = { "underline" },
                    hints       = { "underline" },
                    warnings    = { "underline" },
                    information = { "underline" }
                },

                inlay_hints  = {
                    background = true
                }
            }
        }
    },

    config = function()
        vim.cmd.colorscheme("catppuccin")
    end
}

