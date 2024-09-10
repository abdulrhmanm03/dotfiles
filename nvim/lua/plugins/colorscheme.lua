return {
	-- "rose-pine/neovim",
	-- name = "rose-pine",
	-- priority = 1000,
	-- config = function()
	-- 	vim.cmd.colorscheme("rose-pine")
	-- end,

	-- "kyazdani42/blue-moon",
	-- config = function()
	-- 	vim.opt.termguicolors = true
	-- 	vim.cmd.colorscheme("blue-moon")
	-- end,

	-- "olivercederborg/poimandres.nvim",
	-- lazy = false,
	-- priority = 1000,
	-- config = function()
	-- 	require("poimandres").setup({
	-- 		-- leave this setup function empty for default config
	-- 		-- or refer to the configuration section
	-- 		-- for configuration options
	-- 	})
	-- end,
	--
	-- -- optionally set the colorscheme within lazy config
	-- init = function()
	-- 	vim.cmd("colorscheme poimandres")
	-- end,

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
