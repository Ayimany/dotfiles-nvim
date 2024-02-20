local vim             = vim

-- Theme
vim.opt.bg            = os.getenv("GLOBAL_THEME_MODE") or "dark"
vim.opt.colorcolumn   = "80"
vim.opt.signcolumn    = "yes"
vim.opt.termguicolors = true
vim.opt.cursorline    = true
vim.opt.sidescrolloff = 16
vim.opt.scrolloff     = 8

-- Input
vim.opt.mousescroll   = "ver:0,hor:0"
vim.opt.mouse         = nil

-- UI
vim.opt.nu            = true
vim.opt.rnu           = true
vim.opt.wrap          = false
vim.opt.shm           = "aoOtTF"
vim.opt.statusline    = "󰈔 %f │  %l:%c │  %Y %m%R"

-- Edit
vim.opt.fixeol        = true

-- Tabs
vim.opt.smartindent   = true
vim.opt.expandtab     = true
vim.opt.softtabstop   = 4
vim.opt.shiftwidth    = 4
vim.opt.tabstop       = 4

-- Swap & Undo
vim.opt.backup        = false
vim.opt.swapfile      = false
vim.opt.undofile      = true
vim.opt.undodir       = (os.getenv("XDG_DATA_HOME")
                        or (os.getenv("HOME") .. "/local/share"))
                        .. "/nvim/undodir"

-- Search
vim.opt.incsearch     = true
vim.opt.hlsearch      = false

-- Etc
vim.opt.isfname:append("@-@")
vim.opt.updatetime    = 50
