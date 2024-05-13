vim.opt.nu = true
vim.opt.relativenumber = true
-- vim.opt.mouse = "a"

-- Tabs and indentention
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- appearance
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.guicursor = ""

-- splits
-- vim.opt.splitbelow = true
-- vim.opt.splitright = true

-- misc
vim.opt.wrap = false -- line wrap
vim.opt.cursorline = false -- cursor line
vim.opt.swapfile = false -- turn off swap files
vim.opt.backup = false -- turn off backup files
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- undo files
vim.opt.undofile = true -- turn on undo files
vim.opt.incsearch = true -- incremental search
vim.opt.scrolloff = 8 -- scroll offset
vim.opt.sidescrolloff = 8 -- scroll offset horizontal
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.backspace = "indent,eol,start" -- backspace
vim.opt.showmode = false
vim.opt.hlsearch = false
vim.opt.inccommand = "split"
