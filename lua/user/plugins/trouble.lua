return {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {},
    config = function()
        vim.keymap.set("n", "<leader>xq", function()
            require("trouble").open("quickfix")
        end)
        vim.keymap.set("n", "gR", function()
            require("trouble").open("lsp_references")
        end)
    end,
}