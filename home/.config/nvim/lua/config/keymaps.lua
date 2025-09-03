local v = vim
local k = v.keymap.set
local r = require
local m = r("helpers.keys").map

k("n", "<S-K>", "yyddkP", {desc = 'Switch current line with the one above'})
k("n", "<S-J>", "yyddjP", {desc = 'Switch current line with the one below'})

k({"n", "v"}, "x", '"_x')

k("n", "ycc", "yygccp", {remap = true, desc = 'Duplicate line and comment the first one'})

k("n", "j", "gj", {remap = true, desc = 'Move to line below'})
k("n", "k", "gk", {remap = true, desc = 'Move to line above'})

k("n", "<Leader>wb", "<C-W>v", {desc = 'Split window horizontally'})
k("n", "<Leader>wv", "<C-W>s", {desc = 'Split window vertically'})
k("n", "<Leader>wh", "<C-W>h", {desc = 'Move to the window on the left'})
k("n", "<Leader>wj", "<C-W>j", {desc = 'Move to the window below'})
k("n", "<Leader>wk", "<C-W>k", {desc = 'Move to the window above'})
k("n", "<Leader>wl", "<C-W>l", {desc = 'Move to the window on the right'})

k("n", "<Leader>sp", function()
    v.opt_local.spell = not(v.opt_local.spell:get())
    print("spellcheck: " .. tostring(v.o.spell))
end, {desc = 'Toggle spellcheck'})

k("n", "<Leader>ya", "ggyG", {desc = 'Yank all file'})

m("n", "<Leader><Leader>", r("telescope.builtin").find_files, 'Files')
m("n", "<Leader>tf", r("telescope.builtin").find_files, 'Files')
m("n", "<Leader>tw", r("telescope.builtin").grep_string, 'Current word')
m("n", "<Leader>tg", r("telescope.builtin").live_grep, 'Grep')
m("n", "<Leader>tr", r("telescope.builtin").oldfiles, 'Recently opened')
m("n", "<Leader>td", r("telescope.builtin").diagnostics, 'Diagnostics')
k("n", "<Leader>tc", ":Telescope colorscheme<CR>", {desc = 'Open colorscheme selection panel'})

k("n", "<C-u>", "<C-u>zz", {desc = 'Scroll up and center line'})
k("n", "<C-d>", "<C-d>zz", {desc = 'Scroll down and center line'})

k("n", "<Leader>cc", ":cclose<CR>", {desc = 'Close errors and warnings panel'})

