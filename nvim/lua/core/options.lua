vim.cmd("let g:netrw_liststyle = 3")

local o = vim.opt

o.relativenumber = true

o.number = true

o.tabstop = 4
o.shiftwidth = 4
o.expandtab = true
o.autoindent = true

o.wrap = false

o.ignorecase = true
o.smartcase = true

o.smartindent = true
o.showmode = false

o.termguicolors = true
o.background = "dark"
o.signcolumn = "yes"

o.backspace = "indent,eol,start"

o.clipboard:append("unnamedplus")

o.splitright = true
o.splitbelow = true

o.scrolloff = 5
o.sidescrolloff = 35
o.cursorline = true
