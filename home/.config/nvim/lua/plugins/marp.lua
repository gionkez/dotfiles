return {
	{
		"nwiizo/marp.nvim",
		ft = "markdown",
		config = function()
			require("marp").setup {
				marp_command = "npx @marp-team/marp-cli@latest",
				browser = nil,
				show_tips = false,
				suggest_gitignore = false,
				server_mode = false
			}
		end
	}
}
