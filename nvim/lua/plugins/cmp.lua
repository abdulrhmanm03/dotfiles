return {
	"hrsh7th/nvim-cmp",
	event = "InsertEnter",
	dependencies = {
		"hrsh7th/cmp-buffer", -- source for text in buffer
		"hrsh7th/cmp-path", -- source for file system paths
		{
			"L3MON4D3/LuaSnip",
			-- follow latest release.
			version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
			-- install jsregexp (optional!).
			build = "make install_jsregexp",
		},
		"saadparwaiz1/cmp_luasnip", -- for autocompletion
		"rafamadriz/friendly-snippets", -- useful snippets
	},
	config = function()
		local cmp = require("cmp")

		local luasnip = require("luasnip")

		-- loads vscode style snippets from installed plugins (e.g. friendly-snippets)
		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			completion = {
				completeopt = "menu,menuone,preview",
			},
			snippet = { -- configure how nvim-cmp interacts with snippet engine
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},

			mapping = cmp.mapping.preset.insert({
				["<A-k>"] = cmp.mapping.select_prev_item(), -- previous suggestion
				["<A-j>"] = cmp.mapping.select_next_item(), -- next suggestion
				["<A-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
				["<A-e>"] = cmp.mapping.abort(), -- close completion window
				["<CR>"] = cmp.mapping.confirm(),
			}),
			-- sources for autocompletion
			sources = cmp.config.sources({
				{ name = "nvim_lsp", max_item_count = 10 },
				{ name = "codeium" },
				{ name = "luasnip", max_item_count = 5 }, -- snippets
				{ name = "buffer", max_item_count = 5 }, -- text within current buffer
				{ name = "path", max_item_count = 5 }, -- file system paths
			}),
		})
		vim.keymap.set({ "i", "s" }, "<Tab>k", function()
			if luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			end
		end)

		vim.keymap.set({ "i", "s" }, "<Tab>j", function()
			if luasnip.jumpable(-1) then
				luasnip.jump(-1)
			end
		end)
	end,
}
