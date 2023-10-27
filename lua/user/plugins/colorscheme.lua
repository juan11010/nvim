-- this a test
return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,
        config = function()
            local rose_pine = require("rose-pine")

            rose_pine.setup({
                disable_background = true,
                disable_float_background = true,
            })
            vim.cmd("colorscheme rose-pine")
        end,
    },
}
