local M = {}

local lsp_aucmd = vim.api.nvim_create_augroup("LSP Loading", {})

M.enable = function()
    vim.api.nvim_create_autocmd("FileType", {
        pattern  = require("data.lsp").filetypes,
        group    = lsp_aucmd,

        callback = function()
            require("lspconfig")
            require("trouble")
            require("cmp")
            require("dap")
        end,

    })
end

return M
