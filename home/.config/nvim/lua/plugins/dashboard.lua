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
					number = false,
					wrap = true
				}
			})
	    end
	}
}
