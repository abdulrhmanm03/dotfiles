return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

		require("lualine").setup({
			options = {
				globalstatus = true,
			},
			sections = {
				lualine_c = { "buffers" },
				lualine_x = { "encoding", { "filetype", icon_only = true } },
			},
		})
	end,
}
