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
					number = true,
					relativenumber = true,
					wrap = true
				}
			})
	    end
	}
}
