return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    config = function()
        local lualine = require("lualine")

        local diagnostics = {
            "diagnostics",
            sections = { "error", "warn" },
            symbols = { error = "E:", warn = "W:", info = "I:", hint = "H:" },
        }

        local filename = {
            "filename",
            path = 1,
        }

        lualine.setup({
            options = {
                theme = "auto",
                disabled_filetypes = {
                    statusline = {},
                    winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = true,
                refresh = {
                    statusline = 1000,
                    tabline = 1000,
                    winbar = 1000,
                },
            },
            sections = {
                lualine_a = { "mode" },
                lualine_b = { "branch" },
                lualine_c = { filename , diagnostics },
                lualine_x = { "diff" },
                lualine_y = { "progress" },
                lualine_z = { "location" },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = { "filename" },
                lualine_x = { "location" },
                lualine_y = {},
                lualine_z = {},
            },
            tabline = {},
            winbar = {},
            inactive_winbar = {},
            extensions = {},
        })
    end,
}
