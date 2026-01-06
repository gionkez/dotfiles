return {
	{
		"brenoprata10/nvim-highlight-colors",
		config = function()
			require('nvim-highlight-colors').setup({
				options = {
					render = 'background',
					enable_hex = true,
					enable_short_ex = true,
					enable_rgb = true,
					enable_named_colors = true
				}
			})
	    end
	}
}
