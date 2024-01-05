return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = {
        "plenary",
    },
    config = function()
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")

        telescope.setup({
            defaults = {
                path_display = { "truncate" },
            },
        })

        -- set keymaps
        local keymap = vim.keymap.set -- for conciseness
        keymap("n", "<C-p>", builtin.git_files, {})
        keymap("n", "<leader>pf", builtin.find_files, {})
        keymap("n", "<leader>ps", builtin.live_grep, {})
        keymap("n", "<leader>fh", builtin.help_tags, {})
        keymap("n", "<leader>pws", function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end, {})
        keymap("n", "<leader>pWs", function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end, {})
    end,
}
