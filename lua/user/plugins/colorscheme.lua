return {
    {
        "folke/tokyonight.nvim",
        -- name = "catppuccin",
        lazy = false,
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                transparent = true,
            })
            vim.cmd("colorscheme tokyonight-night")
        end,
    },
}
