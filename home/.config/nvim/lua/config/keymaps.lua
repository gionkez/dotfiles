local v = vim
local k = v.keymap.set
local c = v.cmd

k("v", "J", ":m '>+1<CR>gv=gv", {desc = 'Switch current line with the one below'})
k("v", "K", ":m '<-2<CR>gv=gv", {desc = 'Switch current  line with the one above'})
k({"n", "v"}, "x", '"_x')
k("n", "ycc", "yygccp", {remap = true, desc = 'Duplicate line and comment the first one'})
k("n", "j", "gj", {remap = true, desc = 'Move to line below'})
k("n", "k", "gk", {remap = true, desc = 'Move to line above'})
k("n", "<Leader>wv", "<C-W>v", {desc = 'Split window horizontally'})
k("n", "<Leader>w", "<C-W>s", {desc = 'Split window vertically'})
k("n", "<Leader>wh", "<C-W>h", {desc = 'Move to the window on the left'})
k("n", "<Leader>wj", "<C-W>j", {desc = 'Move to the window below'})
k("n", "<Leader>wk", "<C-W>k", {desc = 'Move to the window above'})
k("n", "<Leader>wl", "<C-W>l", {desc = 'Move to the window on the right'})
