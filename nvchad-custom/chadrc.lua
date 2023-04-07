---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },
  transparency = true,
  hl_override = highlights.override,
  hl_add = highlights.add,

  -- Dashboard settings
  nvdash = {
    load_on_startup = true,
    header =  {
      [[                                                ]],
      [[                                          _.oo. ]],
      [[                  _.u[[/;:,.         .odMMMMMM' ]],
      [[               .o888UU[[[/;:-.  .o@P^    MMM^   ]],
      [[              oN88888UU[[[/;::-.        dP^     ]],
      [[             dNMMNN888UU[[[/;:--.   .o@P^       ]],
      [[            ,MMMMMMN888UU[[/;::-. o@^           ]],
      [[            NNMMMNN888UU[[[/~.o@P^              ]],
      [[            888888888UU[[[/o@^-..               ]],
      [[           oI8888UU[[[/o@P^:--..                ]],
      [[        .@^  YUU[[[/o@^;::---..                 ]],
      [[      oMP     ^/o@P^;:::---..                   ]],
      [[   .dMMM    .o@^ ^;::---...                     ]],
      [[  dMMMMMMM@^`       `^^^^                       ]],
      [[ YMMMUP^                                        ]],
      [[  ^^                                            ]],
      -- " ▄████▄   ▒█████  ▓█████▄  ██▓  █████▒▓██   ██▓ ██▀███  ",
      -- "▒██▀ ▀█  ▒██▒  ██▒▒██▀ ██▌▓██▒▓██   ▒  ▒██  ██▒▓██ ▒ ██▒",
      -- "▒▓█    ▄ ▒██░  ██▒░██   █▌▒██▒▒████ ░   ▒██ ██░▓██ ░▄█ ▒",
      -- "▒▓▓▄ ▄██▒▒██   ██░░▓█▄   ▌░██░░▓█▒  ░   ░ ▐██▓░▒██▀▀█▄  ",
      -- "▒ ▓███▀ ░░ ████▓▒░░▒████▓ ░██░░▒█░      ░ ██▒▓░░██▓ ▒██▒",
      -- "░ ░▒ ▒  ░░ ▒░▒░▒░  ▒▒▓  ▒ ░▓   ▒ ░       ██▒▒▒ ░ ▒▓ ░▒▓░",
      -- "  ░  ▒     ░ ▒ ▒░  ░ ▒  ▒  ▒ ░ ░       ▓██ ░▒░   ░▒ ░ ▒░",
      -- "░        ░ ░ ░ ▒   ░ ░  ░  ▒ ░ ░ ░     ▒ ▒ ░░    ░░   ░ ",
      -- "░ ░          ░ ░     ░     ░           ░ ░        ░     ",
      -- "                                                        ",
      -- "░                  ░                   ░ ░              "
    },
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
