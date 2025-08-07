vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv",{desc = 'Switch current line with the one below'})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv",{desc = 'Switch current  line with the one above'})
