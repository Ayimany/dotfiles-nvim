return {
    "romgrk/barbar.nvim",
    name = "barbar",

    dependencies = {
        "lewis6991/gitsigns.nvim",
        "nvim-tree/nvim-web-devicons"
    },

    init = function()
        vim.g.barbar_auto_setup = true
    end,

    config = function()
        local map = vim.api.nvim_set_keymap
        local opts = { noremap = true, silent = true }
        local wk = require("which-key")

        map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
        map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)

        map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
        map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

        map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
        map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
        map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
        map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
        map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
        map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
        map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
        map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
        map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
        map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)

        map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

        map('n', '<A-w>', '<Cmd>BufferClose<CR>', opts)
        map('n', '<A-c>', '<Cmd>BufferCloseAllButCurrentOrPinned<CR>', opts)
        map('n', '<A-C>', '<Cmd>BufferCloseAllButCurrent<CR>', opts)

        map('n', '<A-P>', '<Cmd>BufferPick<CR>', opts)

        wk.register({
            ["<leader>bn"] = { "<cmd>BufferOrderByBufferNumber<cr>", "Order by Number", opts = opts },
            ["<leader>bd"] = { "<cmd>BufferOrderByDirectory<cr>", "Order by Directory", opts = opts },
            ["<leader>bl"] = { "<cmd>BufferOrderByLanguage<cr>", "Order by Language", opts = opts },
            ["<leader>bw"] = { "<cmd>BufferOrderByWindowNumber<cr>", "Order by Window Number", opts = opts }
        })
    end
}

