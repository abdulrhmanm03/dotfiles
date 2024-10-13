vim.g.mapleader = " "
local k = vim.keymap

k.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
k.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })
k.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close current split" })
k.set("n", "<Tab>", "<cmd>b#<CR>", { desc = "last buffer" })
k.set("n", "<A-h>", "<C-w>h")
k.set("n", "<A-l>", "<C-w>l")
k.set("n", "<A-k>", "<C-w>k")
k.set("n", "<A-j>", "<C-w>j")
k.set({ "i", "n" }, "<A-x>", "<cmd>bd<CR>")
