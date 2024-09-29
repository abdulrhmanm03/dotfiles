return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				globalstatus = true,
			},
			sections = {
				lualine_c = {
					{
						"filename",
						newfile_status = true, -- Display new file status (new file means no write after created)
						path = 1,

						symbols = {
							modified = "(M)", -- Text to show when the file is modified.
							readonly = "(R)", -- Text to show when the file is non-modifiable or readonly.
							unnamed = "", -- Text to show for unnamed buffers.
							newfile = "(New)", -- Text to show for newly created file before first write
						},
					},
				},
				lualine_x = { "filetype" },
				lualine_y = { "encoding" },
				lualine_z = { "progress" },
			},
		})
	end,
}
