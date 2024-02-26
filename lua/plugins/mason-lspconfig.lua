return {
    "williamboman/mason-lspconfig.nvim",
    name = "mason-lspconfig",

    opts = {
        ensure_installed = { -- Need: npm + go + ghcup
            "bashls",
            "biome",
            "clangd",
            "cssls",
            "gopls",
            "jdtls",
            "jqls",
            "julials",
            "kotlin_language_server",
            "lua_ls",
            "perlnavigator",
            "pyright",
            "ruby_ls",
            "rust_analyzer",
            "texlab",
            "tsserver",
            "zls",
        },
    }
}

