return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("kanagawa").setup({
			theme = "dragon",
			background = { -- map the value of 'background' option to a theme
				dark = "dragon", -- try "dragon" !
				light = "lotus",
			},
			globalStatus = true,
			colors = {
				theme = { all = { ui = { bg_gutter = "none" } } },
			},
		})
		vim.cmd.colorscheme("kanagawa")
	end,

	-- "catppuccin/nvim",
	-- name = "catppuccin",
	-- priority = 1000,
	-- config = function()
	--     vim.cmd.colorscheme "catppuccin-mocha"
	-- end,
}
