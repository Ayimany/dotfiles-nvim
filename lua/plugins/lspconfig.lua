return {
    "neovim/nvim-lspconfig",

    config = function()
        local wk = require("which-key")

        wk.register({
            ["<leader>dw"]  = { vim.diagnostic.open_float, "Floating window" },
            ["<leader>d["]  = { vim.diagnostic.goto_prev , "Previous" },
            ["<leader>d]"]  = { vim.diagnostic.goto_next , "Next" },

        })

        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),

            callback = function(ev)
                local opts = { buffer = ev.buf }

                wk.register({
                    ["<leader>sd"] = { vim.lsp.buf.declaration    , "Declaration"    , opts = opts },
                    ["<leader>sD"] = { vim.lsp.buf.definition     , "Definition"     , opts = opts },
                    ["<leader>st"] = { vim.lsp.buf.type_definition, "Type definition", opts = opts },
                    ["<leader>si"] = { vim.lsp.buf.implementation , "Implementation" , opts = opts },
                    ["<leader>sR"] = { vim.lsp.buf.references     , "References"     , opts = opts },

                    ["K"]     = { vim.lsp.buf.hover, "Hover over symbol", opts = opts },

                    ["<leader>sr"] = { vim.lsp.buf.rename , "Rename Symbol"        , opts = opts },
                    ["<leader>oa"] = { vim.lsp.buf.code_action, "Available actions", opts = opts },

                    ["<leader>fH"] = { vim.lsp.buf.signature_help, "Signature help" },
                })
            end

        })

    end

}
