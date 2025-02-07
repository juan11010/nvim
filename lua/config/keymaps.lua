local map = vim.keymap.set

map("n", "<leader>pv", "<CMD>Oil<CR>")
map("i", "<C-c>", "<ESC>", { silent = true })

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

-- better paste
map("x", "p", [["_dP]])

-- center screen after search
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- yank to system clipboard
map({ "n", "v" }, "<leader>y", [["+y]])
map("n", "<leader>Y", [["+Y]])

-- search and replace
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- quick fix list and location list
map("n", "[q", "<cmd>cprev<CR>zz")
map("n", "]q", "<cmd>cnext<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz")
map("n", "<leader>j", "<cmd>lprev<CR>zz")

-- delete without yanking
map("n", "<leader>dd", [["_d"]])
map("v", "<leader>d", [["_d"]])

-- undo tree and fugitive
-- map("n", "<leader>u", vim.cmd.UndotreeToggle)
-- map("n", "<leader>gs", vim.cmd.Git)

-- Resize window using <ctrl> arrow keys
map("n", "<C-Up>", "<cmd>resize +2<cr>")
map("n", "<C-Down>", "<cmd>resize -2<cr>")
map("n", "<C-Left>", "<cmd>vertical resize -2<cr>")
map("n", "<C-Right>", "<cmd>vertical resize +2<cr>")
