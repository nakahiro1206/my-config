local wezterm = require("wezterm")
local act = wezterm.action

return {
	-- Set window size
	initial_rows = 40,
	initial_cols = 100,

	color_scheme = "Github Light (Gogh)",

	-- Font settings
	font = wezterm.font_with_fallback({
		"JetBrains Mono", -- Primary font for ASCII/code
		"Noto Sans CJK JP", -- Fallback for Japanese characters
		"Symbola", -- Fallback for Unicode symbols/emojis
	}),
	font_size = 11.0,

	-- Disable tab bar
	enable_tab_bar = false,

	-- Set window opacity
	window_background_opacity = 1.0,
}
