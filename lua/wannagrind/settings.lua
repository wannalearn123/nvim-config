local global = vim.g
local o = vim.opt

o.number = true
o.relativenumber = true
o.syntax = "on"
o.autoindent = true
o.termguicolors = true
o.showcmd = true
o.shiftwidth = 4
o.tabstop = 4

vim.diagnostic.config({ virtual_text = true, underline = false })
