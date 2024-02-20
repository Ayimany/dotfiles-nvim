return {
    "stevearc/conform.nvim",

    config = function()
        local conform = require("conform")

        conform.setup({
            formatters_by_ft = {
                c   = { "clang_format" },
                cpp = { "clang_format" },
            },

            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            }

        })
    end

}
