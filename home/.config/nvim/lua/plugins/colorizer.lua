return {
	{
		"catgoose/nvim-colorizer.lua",
		event = "BufReadPre",
		opts = {
			filetypes = { "*" },
			lazy_load = false,
			user_default_options = {
				names = true,
				names_opts = {
					lowercase = true,
					camelcase = true,
					uppercase = true,
					strip_digits = false,
				},
				names_custom = false,
				RGB = true,
				RGBA = true,
				RRGGBB = true,
				RRGGBBAA = true,
				AARRGGBB = false,
				rgb_fn = false,
				hsl_fn = false,
				oklch_fn = false,
				css = false,
				css_fn = false,
				tailwind = false,
				mode = "background",
				virtualtext = "■",
				virtualtext_inline = false,
				virtualtext_mode = "foreground",
				always_update = true,
				hooks = {
					disable_line_highlight = false,
				}
			}
		}
	}
}
