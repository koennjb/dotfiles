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
		["<leader>fww"] = {
			function()
				require("telescope.builtin").live_grep({ default_text = vim.fn.expand("<cword>") })
			end,
		},
		["<leader>ff"] = {
			function()
				require("telescope.builtin").find_files({ hidden = true })
			end,
		},
	},
}

M.nvterm = {
	t = {
		["<A-g>"] = {
			function()
				require("nvterm.terminal").send("lazygit", "float")
			end,
			"toggle floating Git term",
		},
	},
	n = {
		["<A-g>"] = {
			function()
				require("nvterm.terminal").send("lazygit", "float")
			end,
			"toggle floating Git term",
		},
	},
}

M.markdown_preview = {
	plugin = true,

	n = {
		["<leader>md"] = {
			function()
				vim.cmd("MarkdownPreviewToggle")
			end,
		},
	},
}

M.trouble = {
	plugin = true,

	n = {
		["<leader>p"] = {
			"<cmd>TroubleToggle<cr>",
			"toggle workspace problems",
		},
	},
}

return M
