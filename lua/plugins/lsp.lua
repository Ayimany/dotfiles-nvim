return {
    "neovim/nvim-lspconfig",

    opts = {
    },

    config = function(plugin, opts)
        vim.api.nvim_create_autocmd("LspAttach", {
            group = vim.api.nvim_create_augroup("UserLspConfig", {}),

            callback = function(ev)
                local opts = { buffer = ev.buf }

                require("which-key").register({
                    ["<leader>dw"] = { vim.diagnostic.open_float  , "Floating window"  , opts = opts },
                    ["<leader>d["] = { vim.diagnostic.goto_prev   , "Previous"         , opts = opts },
                    ["<leader>d]"] = { vim.diagnostic.goto_next   , "Next"             , opts = opts },
                    ["<leader>sd"] = { vim.lsp.buf.declaration    , "Declaration"      , opts = opts },
                    ["<leader>sD"] = { vim.lsp.buf.definition     , "Definition"       , opts = opts },
                    ["<leader>st"] = { vim.lsp.buf.type_definition, "Type definition"  , opts = opts },
                    ["<leader>si"] = { vim.lsp.buf.implementation , "Implementation"   , opts = opts },
                    ["<leader>sr"] = { vim.lsp.buf.rename         , "Rename"           , opts = opts },
                    ["<leader>oa"] = { vim.lsp.buf.code_action    , "Available actions", opts = opts },
                    ["<leader>Ff"] = { vim.lsp.buf.format         , "Format"           , opts = opts },
                    ["<leader>fH"] = { vim.lsp.buf.signature_help , "Signature help"   , opts = opts },
                    ["K"]          = { vim.lsp.buf.hover          , "Hover"            , opts = opts },
                })

                vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"

            end
        })
    end
}
