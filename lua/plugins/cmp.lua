return {
    "hrsh7th/nvim-cmp",

    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-cmdline" ,
        "hrsh7th/cmp-buffer"  ,
        "hrsh7th/cmp-path"    ,
        "hrsh7th/cmp-vsnip"   ,
        "hrsh7th/vim-vsnip"   ,
    },

    config = function()
        local cmp = require("cmp")
        local lspkind = require("lspkind")

        cmp.setup({
            snippet     = {
                expand  = function(args)
                    vim.fn["vsnip#anonymous"](args.body)
                end
            },

            window = {
                completion          = {
                    winhighlight    = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
                    col_offset      = -3                                          ,
                    side_padding    = 0                                           ,
                }
            },

            view = {
                entries = {
                    name            = "custom"     ,
                    selection_order = "near_cursor",
                }
            },

            formatting = {
                fields = { "kind", "abbr", "menu" },

                format = function(entry, vim_item)
                    local kind      = lspkind.cmp_format({
                        mode        = "symbol_text",
                        maxwidth    = 50,
                        with_text   = false
                    })(entry, vim_item)

                    local strings = vim.split(kind.kind, "%s", { trimempty = true })

                    kind.kind = " " .. (strings[1] or "") .. " "
                    kind.menu = ""

                    return kind
                end
            },

            mapping = cmp.mapping.preset.insert({
                ["<C-Space>"] = cmp.mapping.complete()                ,
                ["<S-Tab>"]   = cmp.mapping.select_prev_item()        ,
                ["<Tab>"]     = cmp.mapping.select_next_item()        ,
                ["<C-b>"]     = cmp.mapping.scroll_docs(-4)           ,
                ["<C-f>"]     = cmp.mapping.scroll_docs( 4)           ,
                ["<C-e>"]     = cmp.mapping.abort()                   ,
                ["<CR>"]      = cmp.mapping.confirm({ select = true }),
            }),

            sources = cmp.config.sources({ { name = "nvim_lsp" },
                { name = "vsnip"  },
                { name = "buffer" },
            })

        })
    
        local c = require("catppuccin.palettes").get_palette("mocha")

        cmp.setup.filetype("gitcommit", {
            sources = cmp.config.sources({ { name = "git" } },
                { { name = "buffer" } })
        })

        cmp.setup.cmdline({ "/", "?" }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({ { name = "buffer" } })
        })

        cmp.setup.cmdline({ ":" }, {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({ { name = "path" } },
                { { name = "cmdline" } })
        })


        vim.api.nvim_set_hl(0, "PmenuThumb"                 , { bg = c.base     , fg = "NONE"                               })
        vim.api.nvim_set_hl(0, "PmenuSbar"                  , { bg = "NONE"     , fg = "NONE"                               })

        vim.api.nvim_set_hl(0, "CmpItemAbbrDeprecated"      , { bg = "NONE", fg = c.base       , strikethrough = true  })
        vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy"      , { bg = "NONE", fg = c.rosewater  , bold = true           })
        vim.api.nvim_set_hl(0, "CmpItemAbbrMatch"           , { bg = "NONE", fg = c.rosewater  , bold = true           })
        vim.api.nvim_set_hl(0, "CmpItemAbbrDefault"         , { bg = "NONE", fg = c.rosewater  , bold = true           })
        vim.api.nvim_set_hl(0, "CmpItemAbbr"                , { bg = "NONE", fg = c.subtext0                           })

        vim.api.nvim_set_hl(0, "CmpItemKindField"           , { bg = c.crust    , fg = c.green                              })
        vim.api.nvim_set_hl(0, "CmpItemKindEvent"           , { bg = c.crust    , fg = c.green                              })
        vim.api.nvim_set_hl(0, "CmpItemKindVariable"        , { bg = c.crust    , fg = c.green                              })
        vim.api.nvim_set_hl(0, "CmpItemKindProperty"        , { bg = c.crust    , fg = c.green                              })

        vim.api.nvim_set_hl(0, "CmpItemKindValue"           , { bg = c.crust    , fg = c.yellow                             })

        vim.api.nvim_set_hl(0, "CmpItemKindEnumMember"      , { bg = c.crust    , fg = c.peach                              })
        vim.api.nvim_set_hl(0, "CmpItemKindConstant"        , { bg = c.crust    , fg = c.peach                              })


        vim.api.nvim_set_hl(0, "CmpItemKindConstructor"     , { bg = c.crust    , fg = c.mauve                              })
        vim.api.nvim_set_hl(0, "CmpItemKindFunction"        , { bg = c.crust    , fg = c.mauve                              })
        vim.api.nvim_set_hl(0, "CmpItemKindOperator"        , { bg = c.crust    , fg = c.mauve                              })
        vim.api.nvim_set_hl(0, "CmpItemKindMethod"          , { bg = c.crust    , fg = c.mauve                              })

        vim.api.nvim_set_hl(0, "CmpItemKindKeyword"         , { bg = c.crust    , fg = c.red                                })

        vim.api.nvim_set_hl(0, "CmpItemKindReference"       , { bg = c.crust    , fg = c.teal                               })

        vim.api.nvim_set_hl(0, "CmpItemKindTypeParameter"   , { bg = c.crust    , fg = c.pink                               })
        vim.api.nvim_set_hl(0, "CmpItemKindClass"           , { bg = c.crust    , fg = c.pink                               })
        vim.api.nvim_set_hl(0, "CmpItemKindEnum"            , { bg = c.crust    , fg = c.pink                               })
        vim.api.nvim_set_hl(0, "CmpItemKindInterface"       , { bg = c.crust    , fg = c.flamingo                           })
        vim.api.nvim_set_hl(0, "CmpItemKindStruct"          , { bg = c.crust    , fg = c.flamingo                           })

        vim.api.nvim_set_hl(0, "CmpItemKindSnippet"         , { bg = c.crust    , fg = c.lavender                           })

        vim.api.nvim_set_hl(0, "CmpItemKindModule"          , { bg = c.crust    , fg = c.sapphire                           })
        vim.api.nvim_set_hl(0, "CmpItemKindUnit"            , { bg = c.crust    , fg = c.sapphire                           })

        vim.api.nvim_set_hl(0, "CmpItemKindFolder"          , { bg = c.crust    , fg = c.sky                                })
        vim.api.nvim_set_hl(0, "CmpItemKindColor"           , { bg = c.crust    , fg = c.sky                                })
        vim.api.nvim_set_hl(0, "CmpItemKindFile"            , { bg = c.crust    , fg = c.sky                                })

        vim.api.nvim_set_hl(0, "CmpItemKindText"            , { bg = c.crust    , fg = c.text                               })
    end
}

