-- this a test
return {
	{
		"catppuccin/nvim",
		name = "catppuccin",
		lazy = false,
		priority = 1000,
		config = function()
			local catppuccin = require("catppuccin")

			catppuccin.setup({
				transparent_background = true,
				integrations = {
					harpoon = true,
					telescope = {
						enabled = true,
					},
				},
			})
			vim.cmd("colorscheme catppuccin-mocha")
		end,
	},
}
