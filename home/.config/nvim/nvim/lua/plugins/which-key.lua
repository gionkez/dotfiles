return {
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		keys = {
			{
				"<Leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Show current available keymaps",
			},
		},
	}
}
