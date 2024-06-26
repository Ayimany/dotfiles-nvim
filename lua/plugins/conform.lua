return {
    "stevearc/conform.nvim",

    opts = {
        conform = {
            formatters_by_ft = {
                c   = { "clang_format" },
                cpp = { "clang_format" },
            },

            format_on_save = {
                timeout_ms   = 500 ,
                lsp_fallback = true,
            }
        }
    },

    config = function(plugin, opts)
        require("conform").setup(opts.conform)

        vim.api.nvim_create_user_command("Format", function(args)
            local range = nil

            if args.count ~= -1 then
                local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
                range = {
                    start   = { args.line1, 0              },
                    ["end"] = { args.line2, end_line:len() },
                }
          end

          require("conform").format({ async = true, lsp_fallback = true, range = range })

        end, { range = true })

        return true
    end
}

