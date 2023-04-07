local wezterm = require("wezterm")

local M = {}

function M.update_config(config)
  config.line_height = 1.2
  config.cell_width = 0.95
  config.font = wezterm.font("SauceCodePro Nerd Font", { weight = "Medium" })
  config.font = wezterm.font_with_fallback {
    "SauceCodePro Nerd Font",
    "JetBrains Mono",
  }
  config.font_size = 17.0
end

return M
