local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

	-- Override plugin definition options

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			-- format & linting
			{
				"williamboman/mason-lspconfig.nvim",
				"jose-elias-alvarez/null-ls.nvim",
				"jay-babu/mason-null-ls.nvim",
			},
		},
		config = function()
			require("mason-lspconfig").setup({
				automatic_installation = true,
			})
			require("custom.configs.null-ls")
			require("mason-null-ls").setup({
				automatic_installation = true,
			})
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end, -- Override to setup mason-lspconfig
	},

	-- override plugin configs
	{
		"williamboman/mason.nvim",
		opts = overrides.mason,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
	},

	{
		"jay-babu/mason-null-ls.nvim",
		dependencies = {
			"williamboman/mason.nvim",
		},
	},

	{
		"nvim-treesitter/nvim-treesitter",
		opts = overrides.treesitter,
	},

	{
		"nvim-tree/nvim-tree.lua",
		opts = overrides.nvimtree,
	},

	{
		"NvChad/nvterm",
		opts = overrides.nvterm,
	},

	-- Install a plugin
	{
		"max397574/better-escape.nvim",
		event = "InsertEnter",
		config = function()
			require("better_escape").setup()
		end,
	},

	{
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		init = function()
			require("core.utils").load_mappings("markdown_preview")
		end,
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

	{
		"folke/trouble.nvim",
		cmd = { "TroubleToggle" },
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		init = function()
			require("core.utils").load_mappings("trouble")
		end,
		opts = overrides.trouble or {},
		config = function(_, opts)
			require("trouble").setup(opts)
		end,
	},

	-- To make a plugin not be loaded
	-- {
	--   "NvChad/nvim-colorizer.lua",
	--   enabled = false
	-- },
}

return plugins
