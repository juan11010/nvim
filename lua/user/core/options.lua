vim.opt.nu = true
vim.opt.relativenumber = true
-- vim.opt.mouse = "a"

-- Tabs and indentention
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- appearance
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

vim.opt.wrap = false -- line wrap
vim.opt.cursorline = true -- curosor line
vim.opt.swapfile = false -- turn off swap files
vim.opt.backup = false -- turn off backup files
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- undo files
vim.opt.undofile = true -- turn on undo files
vim.opt.incsearch = true -- incremental search
vim.opt.scrolloff = 8 -- scroll offset
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.backspace = "indent,eol,start" -- backspace