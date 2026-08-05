return {
	{
		'folke/todo-comments.nvim',
		dependencies = { 'nvim-lua/plenary.nvim' },
		opts = {
			signs = true,
			sign_priority = 8,
			keywords = {
				TODO = { icon = '', color = 'todo' },
				FIX = { icon = '', color = 'fix' },
				WIP = { icon = '', color = 'wip' },
			    LLM = { icon = '󱚝', color = 'llm' }
			},
			colors = {
			    todo = { '#00EE00' },
			    fix = { '#BB00BB' },
			    wip = { '#FFFF00' },
			    llm = { '#0000DD' }
			}
		}
	}
}
