return {
    "williamboman/mason.nvim",

    config = function()
        local mason = require("mason")

        mason.setup({

        ensure_installed = {
            "clangd",
            "haskell-language-server",
            "gopls",
            "jdtls",
            "jq-lsp",
            "julia-lsp",
            "kotlin-language-server",
            "luals",
            "biome",
            "perlnavigator",
            "r-languageserver",
            "ruby-lsp",
            "rust-analyzer",
            "pyright",
            "zls"
        },

        ui = {
            border = "rounded",

            icons = {
                package_installed = "",
                package_pending = "󰔛",
                package_uninstalled = "",
            },
        }

        })

    end
}
