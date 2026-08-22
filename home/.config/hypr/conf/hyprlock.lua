local colors = {
	foreground = 'rgba(171917FF)',
	background = 'rgba(FFFCFFFF)',
	details001 = 'rgba(FF6D6DFF)',
	details003 = 'rgba(EEB00BFF)'
}

local config = {
	general = {
		hide_cursor = true,
		ignore_empty_inputs = true
	},
	animations = {
		enabled = false
	},
	background = {
		path = 'screenshot',
		blur_size = 3,
		blur_passes = 3
	},
	input_field = {
		size = '100, 50',
		outline_thickness = 3,
		dots_size = 0.1,
		dots_spacing = 0.3,
		dots_center = true,
		placeholder_text = '',
		rounding = 5,
		outer_color = colors.details001,
		inner_color = colors.background,
		font_color = colors.foreground,
		fail_color = colors.details003,
		fail_text = 'wrong password',
		font_family = 'Iosevka NFM',
		halign = 'center',
		valign = 'center'
	},
	label = {
		text = '$TIME',
		text_align = center,
		color = colors.background,
		font_size = 24,
		font_family = 'Iosevka NFM',
		position = '0, 50'
	}
}

local function generate_hyprlock_conf()
	local path = os.getenv('HOME') .. '/.config/hypr/conf/hyprlock.conf'
	local file = io.open(path, 'w')
	if not file then return end
	file:write('general {\n')
	for k, v in pairs(config.general) do
		file:write(string.format('    %s = %s\n', k, tostring(v)))
	end
	file:write('}\n\n')
	file:write('animation {\n')
	for k, v in pairs(config.animations) do
		file:write(string.format('    %s = %s\n', k, tostring(v)))
	end
	file:write('}\n\n')
	file:write('background {\n')
	for k, v in pairs(config.background) do
		file:write(string.format('    %s = %s\n', k, tostring(v)))
	end
	file:write('}\n\n')
	file:write('input-field {\n')
	for k, v in pairs(config.input_field) do
		file:write(string.format('    %s = %s\n', k, tostring(v)))
	end
	file:write('}\n\n')
	file:write('label {\n')
	for k, v in pairs(config.label) do
		file:write(string.format('    %s = %s\n', k, tostring(v)))
	end
	file:write('}')
	file:close()
end

generate_hyprlock_conf()
