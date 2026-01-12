return {
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			signs = true,
			sign_priority = 8,
			keywords = {
				TODO = { icon = " ", color = "todo" },
				FIX = { icon = " ", color = "fix" },
				WIP = { icon = " ", color = "wip" },
			    LLM = { icon = "󱚝 ", color = "llm" }
			},
			colors = {
			    todo = { "#386d2e" },
			    fix = { "#7f285c" },
			    wip = { "#494c09" },
			    llm = { "#0122b2" }
			}
		}
	}
}
