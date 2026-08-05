return {
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-treesitter/nvim-treesitter',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make', cond = vim.fn.executable('make') == 1 },
		},
		config = function()
			require('telescope').setup({
				defaults = {
					mappings = {
						i = {
							['<C-u>'] = false,
							['<C-d>'] = false
						}
					},
					file_ignore_patterns = {
						'%.pdf$'
					}
				}
			})
			pcall(require('telescope').load_extension, 'fzf')
		end,
	},
}
