hl.config({
	general = {
		border_size = 3,
		gaps_in  = 3,
		gaps_out = 5,
		float_gaps = 3,
		gaps_workspaces = 0,
		col = {
			active_border = '#FF6D6D',
			inactive_border = '#008B8B'
		},
		layout = 'dwindle',
		no_focus_fallback = true,
		resize_on_border = true,
		extend_border_grab_area = 0,
		hover_icon_on_border = true,
		allow_tearing = false,
		resize_corner = 0,
		modal_parent_blocking = true,
		locale = 'it'
	},
	decoration = {
		rounding = 5,
		rounding_power = 4,
		active_opacity = 1,
		inactive_opacity = 1,
		fullscreen_opacity = 1,
		dim_modal = false,
		dim_inactive = false,
		dim_strength = 0,
		dim_special = 0,
		dim_around = 0,
		border_part_of_window = true,
		blur = {
			enabled = false
		},
		shadow = {
			enabled = false
		},
		glow = {
			enabled = false
		},
		motion_blur = {
			enabled = false
		}
	},
	animations = {
		enabled = false
	},
	input = {
		kb_layout = 'it',
		follow_mouse = 2,
		float_switch_override_focus = 0,
		touchpad = {
			disable_while_typing = true,
			natural_scroll = false,
			scroll_factor = 1,
			middle_button_emulation = false,
			tap_to_click = true,
			drag_lock = 0,
			tap_and_drag = true,
			flip_x = false,
			flip_y = false,
			drag_3fg = 0
		}
	},
	gestures = {
		scrolling = {
			move_snap_to_grid = true,
			move_snap_cursor = false
		}
	},
	group = {
		groupbar = {
			enabled = true,
			disable_when_only = true,
			font_family = 'Iosevka NFM',
			font_size = 12,
			font_weight_active = 'normal',
			font_weight_inactive = 'normal',
			gradients = false,
			height = 14,
			indicator_gap = 0,
			indicator_height = 3
		}
	},
	misc = {
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		disable_scale_notification = false,
		font_family = 'Iosevka NFM',
		splash_font_family = 'Iosevka NFM',
		force_default_wallpaper = 0,
		vrr = 0,
		mouse_move_enables_dpms = true,
		key_press_enables_dpms = true,
		always_follow_on_dnd = true,
		animate_manual_resizes = false,
		animate_mouse_windowdragging = false,
		disable_autoreload = false,
		enable_swallow = false,
		focus_on_activate = false,
		mouse_move_focuses_monitor = false,
		allow_session_lock_restore = false,
		session_lock_xray = false,
		session_lock_blur = false,
		close_special_on_empty = true,
		exit_window_retains_fullscreen = false,
		middle_click_paste = true
	}
})

hl.env('XCURSOR_SIZE', '24')
hl.env('HYPRCURSOR_SIZE', '24')

require('conf/autostart')
require('conf/binds')
require('conf/hyprlock')
require('conf/monitor')
require('conf/windows')
