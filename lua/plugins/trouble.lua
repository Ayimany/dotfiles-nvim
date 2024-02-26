return {
    "folke/trouble.nvim",
    name = "trouble",

    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },

    config = function()
        local wk = require("which-key")

        wk.register({
            ["<leader>dW"] = { "<cmd>TroubleToggle<cr>", "Window" },
            ["<leader>dw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace" },
            ["<leader>dd"] = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document" },
            ["<leader>dq"] = { "<cmd>TroubleToggle quickfix<cr>", "Quick Fixes" },
            ["<leader>dl"] = { "<cmd>TroubleToggle loclist<cr>", "LocList" },
            ["<leader>sR"] = { "<cmd>TroubleToggle lsp_references<cr>", "LSP Referenes" },
        })
    end
}

