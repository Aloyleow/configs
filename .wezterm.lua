-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 180
config.initial_rows = 38

-- Fonts size and color scheme. 
config.font_size = 12
config.font = wezterm.font("JetBrains Mono")
config.color_scheme = 'Ashes (base16)'
config.window_background_opacity = 0.75

-- Set tab length

-- Finally, return the configuration to wezterm:
config.front_end = "WebGpu"
config.automatically_reload_config = true
return config
