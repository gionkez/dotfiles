-- applications
hl.bind('SUPER + Escape', hl.dsp.window.close())

hl.bind('SUPER + Space', hl.dsp.exec_cmd('fuzzel'))
hl.bind('ALT + F4', hl.dsp.exec_cmd('~/.config/fuzzel/fuzzel-power.sh'))

hl.bind('SUPER + C', hl.dsp.exec_cmd('foot calc', { float = true, size = {'monitor_w * .3', 'monitor_h * .3'}, move = {'monitor_w - (monitor_w * .3) - 30', 'monitor_h - (monitor_h * .3) - 30'} }))
hl.bind('SUPER + T', hl.dsp.exec_cmd('foot', { float = true, size = {'monitor_w * .3', 'monitor_h * .3'}, move = {'monitor_w - (monitor_w * .3) - 30', 'monitor_h - (monitor_h * .3) - 30'} }))
hl.bind('SUPER + Y', hl.dsp.exec_cmd('foot --override=colors-dark.background=171917 --override=colors-dark.foreground=FFFCFF', { float = true, size = {'monitor_w * .3', 'monitor_h * .3'}, move = {'monitor_w - (monitor_w * .3) - 30', 'monitor_h - (monitor_h * .3) - 30'} }))
hl.bind('CTRL + N', hl.dsp.exec_cmd([[sh -c 'foot --working-directory="$(readlink -f /proc/$(pgrep -P $(hyprctl activewindow -j | jq -r .pid) | tail -n1)/cwd 2>/dev/null || echo $HOME)" --override=colors-dark.background=171917 --override=colors-dark.foreground=FFFCFF']], { float = true, size = {'monitor_w * .3', 'monitor_h * .3'}, move = {'monitor_w - (monitor_w * .3) - 30', 'monitor_h - (monitor_h * .3) - 30'} }))

hl.bind('SUPER + F', hl.dsp.exec_cmd('firefox'))
hl.bind('SUPER + Z', hl.dsp.exec_cmd('zathura'))

-- windows
hl.bind('SUPER + SHIFT + C', hl.dsp.window.center({ action = 'toggle' }))

hl.bind('SUPER + SHIFT + left', hl.dsp.window.move({ direction = 'left' }))
hl.bind('SUPER + SHIFT + down', hl.dsp.window.move({ direction = 'down' }))
hl.bind('SUPER + SHIFT + up', hl.dsp.window.move({ direction = 'up' }))
hl.bind('SUPER + SHIFT + right', hl.dsp.window.move({ direction = 'right' }))

hl.bind('SUPER + ALT + left', hl.dsp.window.swap({ direction = 'left' }))
hl.bind('SUPER + ALT + down', hl.dsp.window.swap({ direction = 'down' }))
hl.bind('SUPER + ALT + up', hl.dsp.window.swap({ direction = 'up' }))
hl.bind('SUPER + ALT + right', hl.dsp.window.swap({ direction = 'right' }))

hl.bind('ALT + CTRL + SHIFT + F', hl.dsp.window.float({ action = 'toggle' }))
hl.bind('ALT + CTRL + SHIFT + M', hl.dsp.window.fullscreen({ action = 'toggle' }))
hl.bind('ALT + CTRL + SHIFT + P', hl.dsp.window.pseudo({ action = 'toggle' }))

hl.bind('SUPER + left', hl.dsp.focus({ direction = 'left' }), { repeating = true })
hl.bind('SUPER + down', hl.dsp.focus({ direction = 'down' }), { repeating = true })
hl.bind('SUPER + up', hl.dsp.focus({ direction = 'up' }), { repeating = true })
hl.bind('SUPER + right', hl.dsp.focus({ direction = 'right' }), { repeating = true })

hl.bind('SUPER + CTRL + F', hl.dsp.focus({ window = 'floating' }))
hl.bind('SUPER + CTRL + T', hl.dsp.focus({ window = 'tiled' }))

hl.bind('SUPER + CTRL + left', hl.dsp.window.resize({ x = -30, y = 0, relative = true }), {repeating = true} )
hl.bind('SUPER + CTRL + down', hl.dsp.window.resize({ x = 0, y = 30, relative = true }), {repeating = true} )
hl.bind('SUPER + CTRL + up', hl.dsp.window.resize({ x = 0, y = -30, relative = true }), {repeating = true} )
hl.bind('SUPER + CTRL + right', hl.dsp.window.resize({ x = 30, y = 0, relative = true }), {repeating = true} )

for key = 1, 4 do
	hl.bind('SUPER + ' .. key, hl.dsp.focus({ workspace = key }))
	hl.bind('SUPER + ALT + ' .. key, hl.dsp.window.move({ workspace = key }))
	hl.bind('SUPER + SHIFT + ' .. key, hl.dsp.window.move({ workspace = key, follow = false }))
end

-- scripts
hl.bind('ALT + F1', hl.dsp.exec_cmd(
	[[
		sh -c "if hyprctl getoption decoration:screen_shader | grep -q 'grayscale.frag'; then
			hyprctl eval 'hl.config({ decoration = { screen_shader = \"\" } })'
		else
			hyprctl eval 'hl.config({ decoration = { screen_shader = \"~/.config/hypr/conf/grayscale.frag\" } })'
		fi"
	]]
))
hl.bind('ALT + F3', hl.dsp.exec_cmd('foot --hold ~/.config/scripts/shortfetch.sh', { float = true, size = {'monitor_w * .1', 'monitor_h * .15'}, move = {'monitor_w - (monitor_w * .1) - 30', 'monitor_h - (monitor_h * .15) - 30'} }))
hl.bind('ALT + F5', hl.dsp.exec_cmd('foot --hold ~/.config/scripts/pomodoro.sh', { float = true, size = {'monitor_w * .1', 'monitor_h * .15'}, move = {'monitor_w - (monitor_w * .1) - 30', 'monitor_h - (monitor_h * .15) - 30'} }))
hl.bind('ALT + F10', hl.dsp.exec_cmd('hyprpicker'))
hl.bind('ALT + F11', hl.dsp.exec_cmd(
	[[
		f="$HOME/Pictures/screenshots/$(date +%Y-%m-%d_%H-%M-%S.png)";
		grim -g "$(slurp)" "$f";
		wl-copy < "$f";
		notify-send -u low "screenshot" "saved to ~/Pictures/screenshots/"
	]]
))

-- multimedia
hl.bind('XF86AudioMute', hl.dsp.exec_cmd('wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle'), { locked = true, repeating = true })
hl.bind('XF86AudioLowerVolume', hl.dsp.exec_cmd('wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-'), { locked = true, repeating = true })
hl.bind('XF86AudioRaiseVolume', hl.dsp.exec_cmd('wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+'), { locked = true, repeating = true })
hl.bind('XF86MonBrightnessDown',hl.dsp.exec_cmd('brightnessctl -e4 -n2 set 5%-'), { locked = true, repeating = true })
hl.bind('XF86MonBrightnessUp', hl.dsp.exec_cmd('brightnessctl -e4 -n2 set +5%'), { locked = true, repeating = true })
hl.bind('XF86AudioPause', hl.dsp.exec_cmd('playerctl play-pause'), { locked = true })
hl.bind('XF86AudioPrev', hl.dsp.exec_cmd('playerctl previous'), { locked = true })
hl.bind('XF86AudioNext', hl.dsp.exec_cmd('playerctl next'), { locked = true })

-- gestures
hl.gesture({fingers = 2, direction = 'pinch', action = 'cursor_zoom', zoom_level = 1.5})
 hl.gesture({fingers = 3, direction = 'pinch', action = 'float'})
hl.gesture({fingers = 3, direction = 'swipe', action = 'move'})
hl.gesture({fingers = 4, direction = 'swipe', action = 'resize'})
