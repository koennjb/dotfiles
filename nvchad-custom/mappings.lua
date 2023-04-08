---@type MappingsTable
local M = {}

M.general = {
	n = {
		[";"] = { ":", "enter command mode", opts = { nowait = true } },
	},
}

-- more keybinds!

M.telescope = {
	n = {
		["<leader>fw"] = {
			function()
				require('telescope.builtin').live_grep({ default_text = vim.fn.expand('<cword>') })
			end,
		},
	},
}

M.nvterm = {
  t = {
    ["<A-g>"] = {
      function()
        require("nvterm.terminal").send('lazygit', 'float')
      end,
      "toggle floating Git term",
    },
  },
  n = {
    ["<A-g>"] = {
      function()
        require("nvterm.terminal").send('lazygit', 'float')
      end,
      "toggle floating Git term",
    },
  }
}

return M
