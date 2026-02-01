-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- Other wezterm actions
local newTabInNewWindow = wezterm.action_callback(function(win, pane)
	pane:move_to_new_window()
end)
-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 180
config.initial_rows = 38

-- Fonts 
config.font = wezterm.font_with_fallback {
  '3270 Nerd Font Mono SemCond', 
  'JetBrains Mono',
}

config.font_size = 16

-- Rainbow stuff
config.color_scheme = 'Ashes (base16)'
config.window_background_opacity = 0.75
config.bold_brightens_ansi_colors = true
config.colors = { cursor_bg = "#7df5e1", cursor_fg = "#0a0a0a"}

-- Set tab length
config.hide_tab_bar_if_only_one_tab = true

config.front_end = "WebGpu"
config.automatically_reload_config = true

-- Keys
config.keys = {
 {
  key = "D",
  mods = "CTRL|SHIFT",
  action = newTabInNewWindow
 },
}
-- Finally, return the configuration to wezterm:
return config
