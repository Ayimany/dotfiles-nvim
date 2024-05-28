return {
    "p00f/clangd_extensions.nvim",

    opts = {
        clangd = {
            inlay_hints = {
                inline                    = vim.fn.has("nvim-0.10") == 1,
                priority                  = 100                         ,
                show_parameter_hints      = true                        ,
                only_current_line         = false                       ,
                max_len_align             = false                       ,
                right_align               = false                       ,
                right_align_padding       = 7                           ,
                max_len_align_padding     = 1                           ,
                only_current_line_autocmd = { "CursorHold" }            ,
                parameter_hints_prefix    = "<- "                       ,
                other_hints_prefix        = "=> "                       ,
                highlight                 = "Comment"                   ,
            },

            ast = {
                role_icons = {
                    type                  = "",
                    declaration           = "",
                    expression            = "",
                    specifier             = "",
                    statement             = "",
                    ["template argument"] = "",
                },

                kind_icons = {
                    Compound             = "",
                    Recovery             = "",
                    TranslationUnit      = "",
                    PackExpansion        = "",
                    TemplateTypeParm     = "",
                    TemplateTemplateParm = "",
                    TemplateParamObject  = "",
                },

                highlights = {
                    detail = "Comment"
                }
                
            },

            memory_usage = {
                border = "none"
            },

            symbol_info = {
                border = "none"
            }
        }
    },

    config = function(plugin, opts)
        require("clangd_extensions").setup(opts.clangd)
    end

}
