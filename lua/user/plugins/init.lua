return {
    {
        "nvim-lua/plenary.nvim",
        name = "plenary",
    },
    "github/copilot.vim",
    "mbbill/undotree",
    "tpope/vim-fugitive",
    "tpope/vim-sleuth",
    -- "tpope/vim-surround",
    "nvim-treesitter/nvim-treesitter-context",
    {
        "NvChad/nvim-colorizer.lua",
        event = { "BufReadPre", "BufNewFile" },
        config = true,
    },
    {
        "lewis6991/gitsigns.nvim",
        event = { "BufReadPre", "BufNewFile" },
        config = true,
    },
}
