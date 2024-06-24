local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
    require("plugins.which-key"),
    require("plugins.leap"),

    require("plugins.mason"),
    require("plugins.lspconfig"),

    require("plugins.lspkind"),
    require("plugins.treesitter"),

    require("plugins.cmp"),
    require("plugins.zero"),

    require("plugins.conform"),

    require("plugins.fugitive"),
    require("plugins.trouble"),
    require("plugins.telescope"),
    require("plugins.nvim-tree"),

    require("plugins.lualine"),
    require("plugins.gitsigns"),
    require("plugins.barbar"),
    require("plugins.noice"),
    require("plugins.catppuccin"),
}

local opts = {}
require("lazy").setup(plugins, opts)
