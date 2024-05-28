return {
    "onsails/lspkind.nvim",

    opts = {
        lspkind = {
            symbol_map = {
                Text          = "󰦨",
                Method        = "󰆧",
                Function      = "󰡱",
                Constructor   = "󰮄",
                Field         = "",
                Variable      = "",
                Class         = "",
                Interface     = "",
                Module        = "󱒌",
                Property      = "",
                Unit          = "󱒌",
                Value         = "",
                Enum          = "",
                Keyword       = "",
                Snippet       = "",
                Color         = "",
                File          = "",
                Reference     = "",
                Folder        = "",
                EnumMember    = "",
                Constant      = "",
                Struct        = "",
                Event         = "",
                Operator      = "",
                TypeParameter = "",
            }
        }
    },

    config = function(plugin, opts)
        require("lspkind").init(opts.lspkind)
    end
}

