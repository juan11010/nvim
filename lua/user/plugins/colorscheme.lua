return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
      local tokyonight = require("tokyonight")

      tokyonight.setup({
        transparent = true,
        styles = {
          floats = "transparent",
        }
      })

			vim.cmd("colorscheme tokyonight-night")
		end,
	},
}
