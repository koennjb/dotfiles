local wezterm = require("wezterm")

local M = {}

local function register_event(event_name, fn)
  wezterm.on(event_name, fn)
  M[event_name] = event_name
  return event_name
end

register_event("IncreaseOpacity", function(win, _pane)
  local overrides = win:get_config_overrides() or {}
  if not overrides.window_background_opacity then
    -- Use default opacity if window has no override
    overrides.window_background_opacity = 0.8  
  end

  local opacity = overrides.window_background_opacity

  if opacity + 0.05 <= 1.0 then
    overrides.window_background_opacity = opacity + 0.05
  end

  win:set_config_overrides(overrides)
end)

register_event("DecreaseOpacity", function(win, _pane)
  local overrides = win:get_config_overrides() or {}

  if not overrides.window_background_opacity then
    -- Use default opacity if window has no override
    overrides.window_background_opacity = 0.8  
  end

  local opacity = overrides.window_background_opacity

  if opacity - 0.05 >= 0.0 then
    overrides.window_background_opacity = opacity - 0.05
  end

  win:set_config_overrides(overrides)
end)

return M
