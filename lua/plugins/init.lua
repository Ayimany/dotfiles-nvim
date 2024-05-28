local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
    require("lsp.plugins.clangd"),
    require("plugins.cmp")       ,
    require("plugins.conform")   ,
    require("plugins.dap")       ,
    require("plugins.gitsigns")  ,
    require("plugins.leap")      ,
    require("plugins.treesitter"),
    require("plugins.lspkind")   ,
    require("plugins.lsp")       ,
    require("plugins.mason")     ,
    require("plugins.trouble")   ,
    require("plugins.terminal")  ,
    require("plugins.telescope") ,
    require("plugins.tree")      ,
    require("plugins.which-key") ,
    require("plugins.catppuccin"),
    require("plugins.lualine")   ,
}


local opts = {
    defaults  = {
        lazy  = true      ,
        event = "VeryLazy",
    }
}

require("lazy").setup(plugins, opts)

