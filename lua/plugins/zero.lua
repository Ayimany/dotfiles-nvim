return {
    "VonHeikemen/lsp-zero.nvim",

    config = function()
        local zero = require("lsp-zero") -- hehe
        local cmp = require("cmp_nvim_lsp")
        zero.extend_lspconfig()

        local lspconfig = require("lspconfig")
        local capabilities = cmp.default_capabilities()

        lspconfig.bashls                .setup({ capabilities = capabilities })
        lspconfig.clangd                .setup({ capabilities = capabilities })
        lspconfig.cssls                 .setup({ capabilities = capabilities })
        lspconfig.gopls                 .setup({ capabilities = capabilities })
        lspconfig.jdtls                 .setup({ capabilities = capabilities })
        lspconfig.jqls                  .setup({ capabilities = capabilities })
        lspconfig.julials               .setup({ capabilities = capabilities })
        lspconfig.kotlin_language_server.setup({ capabilities = capabilities })
        lspconfig.lua_ls                .setup({ capabilities = capabilities })
        lspconfig.perlnavigator         .setup({ capabilities = capabilities })
        lspconfig.pyright               .setup({ capabilities = capabilities })
        lspconfig.ruby_ls               .setup({ capabilities = capabilities })
        lspconfig.rust_analyzer         .setup({ capabilities = capabilities })
        lspconfig.texlab                .setup({ capabilities = capabilities })
        lspconfig.lua_ls                .setup({ capabilities = capabilities })
        lspconfig.r_language_server     .setup({ capabilities = capabilities })
        lspconfig.tsserver              .setup({ capabilities = capabilities })
        lspconfig.zls                   .setup({ capabilities = capabilities })

    end

}
