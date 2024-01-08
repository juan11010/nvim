return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        priority = 1000,
        config = function()
            require("rose-pine").setup({
                extend_background_behind_borders = false,
                styles = {
                    transparency = true,
                },
            })
            vim.cmd("colorscheme rose-pine")
        end,
    },
}
