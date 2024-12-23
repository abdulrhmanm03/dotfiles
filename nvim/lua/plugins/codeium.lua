return {
	"Exafunction/codeium.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"hrsh7th/nvim-cmp",
	},
	config = function()
		require("codeium").setup({
			enable_cmp_source = true,
			enable_chat = true,
			virtual_text = {
				enabled = true,
			},
		})
	end,
}
