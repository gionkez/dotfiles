return {
	{
		"folke/snacks.nvim",
		opts = {
			animate = {
				enabled = true,
				duration = 25,
				fps = 60
			},
			bigfile = { enabled = false },
			dashboard = { enabled = false },
			explorer = { enabled = false },
			indent = { enabled = false },
			input = { enabled = false },
			picker = { enabled = false },
			notifier = { enabled = false },
			quickfile = { enabled = false },
			scope = { enabled = false },
			scroll = { enabled = false },
			statuscolumn = { enabled = false },
			words = { enabled = false },
			image = {
				enabled = true,
				force = true,
				doc = {
					enabled = true
				},
				math = {
					enabled = true,
					latex = {
						font_size = "large",
						packages = {
							"amsthm",
							"amsmath",
							"amssymb",
							"bm",
							"numerica"
						},
						tpl = [[
							\documentclass[preview, border=0pt, varwidth, 10pt]{standalone}
							\usepackage{${packages}}
							\begin{document}
								${header}
								{\${font_size}\selectfont
								\color[HTML]{${color}}
								${content}}
							\end{document}
						]]
					}
				}
			}
		}
	}
}
