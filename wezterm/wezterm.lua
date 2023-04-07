local wezterm = require("wezterm")
local color_scheme = require("color_scheme")
local font = require("font")
local mappings = require("mappings")
local window = require("window")

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.debug_key_events = true

color_scheme.update_config(config)
font.update_config(config)
mappings.update_config(config)
window.update_config(config)

return config
