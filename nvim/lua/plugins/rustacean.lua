return {
	"mrcjkb/rustaceanvim",
	version = "^5", -- Recommended
	lazy = false, -- This plugin is already lazy
	["rust-analyzer"] = {
		cargo = {
			allFeatures = true,
		},
	},
	vim.keymap.set("n", "<leader>ca", function()
		vim.cmd.RustLsp("codeAction")
	end),
}
