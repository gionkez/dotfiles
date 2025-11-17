local c = vim.cmd
local r = require

c("colorscheme habamax") --morning
c("set spell")
c("filetype plugin indent on")
c("syntax enable")
c("set number")
c("set ruler")
c("set relativenumber")
c("set syntax")
c("set smartindent")
c("set splitbelow")
c("set splitright")
c("set tabstop=4")
c("set shiftwidth=4")
c("set softtabstop=4")
c("set clipboard=unnamedplus")
c("set wrap")
c("set showbreak=⤷")
c[[
	imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
	smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'
	imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jugp-prev' : '<S-Tab>'
	smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]
r("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/lua/config/luasnip/"})
r("luasnip").config.set_config({
	enable_autosnippets = true,
	store_selection_keys = "<Tab>",
})
