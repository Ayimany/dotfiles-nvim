return {
    "williamboman/mason.nvim",

    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },

    opts = {
        mason = {
            ui = {
                icons = {
                    package_installed   = "✓",
                    package_pending     = "➜",
                    package_uninstalled = "✗",
                }
            }
        },

        masonlsp = {
            ensure_installed = {
                "clangd", "lua_ls", "pyright"
            }
        }
    },

    config = function(plugin, opts)
        require("mason").setup(opts.mason)
        require("mason-lspconfig").setup(opts.masonlsp)
    end
}
