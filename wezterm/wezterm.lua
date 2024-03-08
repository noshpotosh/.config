local wezterm = require("wezterm")
local mappings = require("modules.mappings")

-- Show which key table is active in the status area
wezterm.on("update-right-status", function(window, pane)
	local name = window:active_key_table()
	if name then
		name = "TABLE: " .. name
	end
	window:set_right_status(name or "")
end)

return {
	default_cursor_style = "BlinkingBlock",
    cursor_blink_rate = 500,
    cursor_blink_ease_in = 'Constant',
    cursor_blink_ease_out = 'Constant',
    color_scheme = 'OneDark (base16)',

	colors = {
		tab_bar = {
			background = '#282C34',
			active_tab = {
				bg_color = '#282C34',
				fg_color = '#FFF',
			},
            inactive_tab_hover = {
            	bg_color = '#282C34',
				fg_color = '#FFF',
            },
			inactive_tab = {
				bg_color = '#282C34',
				fg_color = '#ABB2BF',
			},
		},
	},

	-- font
	font = wezterm.font("JetBrainsMonoNL Nerd Font Mono", { weight = "Bold" }),
	font_size = 14.25,
	line_height = 1.5,

	-- tab bar
	use_fancy_tab_bar = false,
	tab_bar_at_bottom = true,
    show_new_tab_button_in_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	tab_max_width = 999999,
	window_padding = {
		left = 30,
		right = 30,
		top = 30,
		bottom = 30,
	},
	window_decorations = "RESIZE",
	inactive_pane_hsb = {
		brightness = 0.7,
	},
	send_composed_key_when_left_alt_is_pressed = false,
	send_composed_key_when_right_alt_is_pressed = true,

	-- key bindings
	leader = mappings.leader,
	keys = mappings.keys,
	key_tables = mappings.key_tables,
}
