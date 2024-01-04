return {
    "ThePrimeagen/harpoon",
    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        local keymap = vim.keymap.set

        keymap("n", "<leader>a", mark.add_file)
        keymap("n", "<leader>h", ui.toggle_quick_menu)

        keymap("n", "<leader>q", function()
            ui.nav_file(1)
        end)
        keymap("n", "<leader>w", function()
            ui.nav_file(2)
        end)
        keymap("n", "<leader>e", function()
            ui.nav_file(3)
        end)
        keymap("n", "<leader>r", function()
            ui.nav_file(4)
        end)
    end,
}
