return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local clients_lsp = function()
			local clients = vim.lsp.get_clients()
			if next(clients) == nil then
				return ""
			end

			local c = {}
			for _, client in pairs(clients) do
				table.insert(c, client.name)
			end
			return "\u{f085} " .. table.concat(c, "|")
		end

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
						path = 4,

						symbols = {
							modified = "(M)", -- Text to show when the file is modified.
							readonly = "(R)", -- Text to show when the file is non-modifiable or readonly.
							unnamed = "", -- Text to show for unnamed buffers.
							newfile = "(New)", -- Text to show for newly created file before first write
						},
					},
				},
				lualine_x = { clients_lsp, "filetype" },
				lualine_y = { "encoding" },
				lualine_z = { "progress" },
			},
		})
	end,
}
-- return {
-- 	"sschleemilch/slimline.nvim",
-- 	dependencies = {
-- 		"lewis6991/gitsigns.nvim",
-- 		"echasnovski/mini.nvim",
-- 	},
-- 	opts = {
-- 		style = "fg",
-- 	},
-- }
