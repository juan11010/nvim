return {
    {
        "nvim-lua/plenary.nvim",
        name = "plenary",
        lazy = true,
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        event = { "BufReadPost", "BufWritePost", "BufNewFile" },
        enabled = true,
        opts = { mode = "cursor", max_lines = 3 },
    },
    "github/copilot.vim",
    "mbbill/undotree",
    "tpope/vim-fugitive",
    "tpope/vim-sleuth",
}
