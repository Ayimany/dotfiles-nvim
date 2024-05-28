return {
    "folke/trouble.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },

    opts = {
        keybinds = {
            ["<leader>dW"] = { "<cmd>TroubleToggle<cr>", "Window" },
            ["<leader>dw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace" },
            ["<leader>dd"] = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document" },
            ["<leader>dq"] = { "<cmd>TroubleToggle quickfix<cr>", "Quick Fixes" },
            ["<leader>dl"] = { "<cmd>TroubleToggle loclist<cr>", "LocList" },
            ["<leader>sR"] = { "<cmd>TroubleToggle lsp_references<cr>", "LSP Referenes" },
        }
    },

    config = function(plugin, opts)
        require("which-key").register(opts.keybinds)
    end
}

