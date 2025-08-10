local v = vim
local k = v.keymap.set
local c = v.cmd

k("v", "J", ":m '>+1<CR>gv=gv", {desc = 'Switch current line with the one below'})
k("v", "K", ":m '<-2<CR>gv=gv", {desc = 'Switch current  line with the one above'})
k({"n", "v"}, "x", '"_x')
k("n", "ycc", "yygccp", {remap = true})
