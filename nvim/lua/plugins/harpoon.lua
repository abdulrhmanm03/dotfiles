return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },

	config = function()
		local harpoon = require("harpoon")
		local setK = vim.keymap.set
		harpoon.setup()
		setK("n", "<leader>a", function()
			harpoon:list():add()
		end)
		setK("n", "<A-a>", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end)
	end,
}
