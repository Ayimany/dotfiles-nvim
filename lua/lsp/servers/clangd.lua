
local root_files = {
    ".clangd",
    ".clang-tidy",
    ".clang-format",
    "compile_commands.json",
    "compile_flags.txt",
    "configure.ac",
}

local util = require("lspconfig.util")

require("lspconfig").clangd.setup({
    capabilities = require("cmp_nvim_lsp").default_capabilities(),

    root_dir = function(fname)
        return util.root_pattern(unpack(root_files))(fname)
            or util.find_git_ancestor(fname)
    end,

    on_attach = function()
        require("clangd_extensions")
        local hints = require("clangd_extensions.inlay_hints")

        hints.setup_autocmd()
        hints.set_inlay_hints()

        require("which-key").register({
            ["<leader>sK"] = { "<cmd>ClangdSymbolInfo<CR>", "Info" },
            ["<leader>sA"] = { "<cmd>ClangdAST<CR>", "View AST" },
            ["<leader>sH"] = { "<cmd>ClangdTypeHierarchy<CR>", "View hierarchy" },
            ["<leader>dM"] = { "<cmd>ClangdMemoryUsage<CR>", "View hierarchy" }
        })
    end
})

