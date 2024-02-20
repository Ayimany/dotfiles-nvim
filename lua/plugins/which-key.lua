return {
    "folke/which-key.nvim",
    event = "VeryLazy",

    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,

    config = function()
        local wk = require("which-key")

        wk.setup({
            window = {
                border = "single"
            },

            icons = {
                breadcrumb = " 󰁕 ",
                separator = "│",
                group = "󰘶 ",
            },
        })

        wk.register({
            ["<leader>G"] = { name = "+Git..." },
            ["<leader>g"] = { name = "+Goto..." },
            ["<leader>s"] = { name = "+Symbol..." },
            ["<leader>h"] = { name = "+Help..." },
            ["<leader>d"] = { name = "+Diagnostic..." },
            ["<leader>f"] = { name = "+Find..."},
            ["<leader>o"] = { name = "+Operate..." },
        })
    end
}
