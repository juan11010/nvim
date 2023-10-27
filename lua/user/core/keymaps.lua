-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Netrw Settings
vim.g.netrw_banner = 0
keymap("n", "<leader>pv", vim.cmd.Ex, opts)

keymap("i", "<C-c>", "<ESC>", opts)

keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

keymap("x", "<leader>p", [["_dP]])
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

keymap({ "n", "v" }, "<leader>y", [["+y]])
keymap("n", "<leader>Y", [["+Y]])

-- search and replace
keymap("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- quick fix list and location list
keymap("n", "<C-k>", "<cmd>cnext<CR>zz")
keymap("n", "<C-j>", "<cmd>cprev<CR>zz")
keymap("n", "<leader>k", "<cmd>lnext<CR>zz")
keymap("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap("n", "<leader>d", [["_d"]])
keymap("v", "<leader>d", [["_d"]])

-- undo tree and fugitive
keymap("n", "<leader>u", vim.cmd.UndotreeToggle)
keymap("n", "<leader>gs", vim.cmd.Git)
