vim.g.mapleader = " "
local k = vim.keymap

k.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
k.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })
k.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close current split" })
k.set({ "n", "i" }, "<C-z>", "<cmd>u<CR>", { desc = "undo" })
k.set({ "n", "i" }, "<C-q>", "<cmd>q<CR>", { desc = "quit" })
k.set({ "n", "i" }, "<C-s>", "<cmd>w<CR>", { desc = "save" })
k.set("n", "<S-l>", "<cmd>bn<CR>", { desc = "next buffer" })
k.set("n", "<S-h>", "<cmd>bp<CR>", { desc = "prev buffer" })
k.set("n", "<C-h>", "<C-w>h")
k.set("n", "<C-j>", "<C-w>j")
k.set("n", "<C-k>", "<C-w>k")
k.set("n", "<C-l>", "<C-w>l")
k.set("i", "<A-x>", "<ESC>")
