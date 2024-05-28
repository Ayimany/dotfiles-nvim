return {
    "nvim-treesitter/nvim-treesitter",

    opts = {
        treesitter = {
            ensure_installed = { "c", "cpp" },
            auto_install     = true,

            highlight = {
                disable = function(lang, buf)
                    local max_filesize = 100 * 1024
                    local ok, stats    = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))

                    if ok and stats and stats.size > max_filesize then
                        return true
                    end
                end
            }

        }
    },

    config = function(plugins, opts)
        require("nvim-treesitter.configs").setup(opts.treesitter)
    end
}

