vim.cmd("filetype plugin indent on")
vim.cmd("syntax enable")
vim.cmd("set number")
vim.cmd("set ruler")
vim.cmd("set relativenumber")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set clipboard=unnamedplus")
vim.cmd[[
	imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
	smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'
	imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
	smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/lua/config/luasnip/"})
require("luasnip").config.set_config({
	enable_autosnippets = true,
	store_selection_keys = "<Tab>",
})
