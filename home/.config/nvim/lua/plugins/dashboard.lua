return {
	{
		'MeanderingProgrammer/dashboard.nvim',
	    event = 'VimEnter',
		config = function()
		    require('dashboard').setup({
				header = {
					'┌┐┌ ┌─┐ ┌─┐ ┬  ┬ ┬ ┌┬┐',
					'│││ ├┤  │ │ └┐┌┘ │ │││',
					'┘└┘ └─┘ └─┘  └┘  ┴ ┴ ┴'
				},
				options = {
					modifiable = true,
					number = false,
					wrap = true
				}
			})
	    end
	}
}
