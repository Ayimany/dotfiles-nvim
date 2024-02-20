return {
    "tpope/vim-fugitive",

    config = function()

        local fugitive_augroup = vim.api.nvim_create_augroup("fugitive_augroup", {})

        local autocmd = vim.api.nvim_create_autocmd

        autocmd("BufWinEnter", {
            group = fugitive_augroup,
            pattern = "*",

            callback = function()
                if vim.bo.ft ~= "fugitive" then
                    return
                end

                local wk    = require("which-key")
                local bufnr = vim.api.nvim_get_current_buf()
                local opts  = {buffer = bufnr, remap = false}

                wk.register({
                    ["<leader>Gg"] = { vim.cmd.Git, "Info" },

                    ["<leader>Ga"] = { function()
                        vim.cmd.Git({ "add ." })
                    end, "Add", opts = opts },

                    ["<leader>Gc"] = { function()
                        vim.cmd.Git({ "commit" })
                    end, "Commit", opts = opts },

                    ["<leader>Gp"] = { function()
                        vim.cmd.Git({ "pull" })
                    end, "Pull", opts = opts },

                    ["<leader>GP"] = { function()
                        vim.cmd.Git({ "push" })
                    end, "Push", opts = opts },

                    ["<leader>GU"] = { function()
                        vim.cmd.Git({ "push -u origin" })
                    end, "Push to origin", opts = opts },

                })

            end,

        })

    end

}
