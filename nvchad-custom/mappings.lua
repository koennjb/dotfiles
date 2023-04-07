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
			"find word under cursor",
		},
	},
}

return M
