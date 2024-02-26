return {
    "stevearc/conform.nvim",
    name = "conform",

    opts = {
        formatters_by_ft = {
            c   = { "clang_format" },
            cpp = { "clang_format" },
        },

        format_on_save = {
            timeout_ms = 500,
            lsp_fallback = true,
        }
    },

    config = function()
        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*",
            callback = function(args)
                local n_lines = vim.api.nvim_buf_line_count(0)
                local last_nonblank = vim.fn.prevnonblank(n_lines)

                require("conform").format({ bufnr = args.buf })

                if last_nonblank <= n_lines then
                    vim.api.nvim_buf_set_lines(0, last_nonblank, n_lines, true, { "" })
                end
            end
        })
    end
}

