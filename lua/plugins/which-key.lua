return {
    "folke/which-key.nvim",

    init = function()
        vim.o.timeout    = true
        vim.o.timeoutlen = 300
    end,

    opts = {
        whichkey = {
            plugins = {
                marks       = true,
                registers   = true,
                presets             = {
                    operators       = true,
                    motions         = true,
                    text_objects    = true,
                    windows         = true,
                    nav             = true,
                    z               = true,
                    g               = true,
                }
            },

            window = {
                border = "single",
            },

            icons = {
                breadcrumb  = "»" ,
                separator   = "➜" ,
                group       = " ",
            }
        },

        keybinds = {
            ["<leader>G"] = { name = "Git..."        },
            ["<leader>g"] = { name = "Goto..."       },
            ["<leader>s"] = { name = "Symbol..."     },
            ["<leader>h"] = { name = "Help..."       },
            ["<leader>d"] = { name = "Diagnostic..." },
            ["<leader>f"] = { name = "Find..."       },
            ["<leader>o"] = { name = "Operate..."    },
            ["<leader>F"] = { name = "File..."       },
            ["<leader>b"] = { name = "Buffer..."     },
        }
    },

    config = function(plugin, opts)
        local wk = require("which-key")
        wk.setup(opts.whichkey)
        wk.register(opts.keybinds)
    end
}

