return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")

		require("lualine").setup({
			options = {
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				globalstatus = true,
			},
			sections = {
				lualine_c = {
					{
						"buffers",
						hide_filename_extension = true,
						filetype_names = {
							NvimTree = "",
							TelescopePrompt = "",
							alpha = "Save the bees",
						},
					},
				},
				lualine_x = { "fileformat" },
				lualine_y = { "encoding" },
				-- lualine_z = { "progress" },
			},
		})
		local k = vim.keymap

		k.set("n", "<A-1>", "<cmd>LualineBuffersJump 1<CR>")
		k.set("n", "<A-2>", "<cmd>LualineBuffersJump 2<CR>")
		k.set("n", "<A-3>", "<cmd>LualineBuffersJump 3<CR>")
		k.set("n", "<A-4>", "<cmd>LualineBuffersJump 4<CR>")
		k.set("n", "<A-5>", "<cmd>LualineBuffersJump 5<CR>")
		k.set("n", "<A-6>", "<cmd>LualineBuffersJump 6<CR>")
		k.set("n", "<A-7>", "<cmd>LualineBuffersJump 7<CR>")
		k.set("n", "<A-8>", "<cmd>LualineBuffersJump 8<CR>")
		k.set("n", "<A-9>", "<cmd>LualineBuffersJump 9<CR>")
		k.set("n", "<A-0>", "<cmd>LualineBuffersJump $<CR>")
	end,
}
