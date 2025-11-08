return {
  'mason-org/mason-lspconfig.nvim',
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "folke/neodev.nvim",
    "saghen/blink.cmp",
    "neovim/nvim-lspconfig"
  },
  config = function()
    require("mason-lspconfig").setup({
      automativc_enable = true,
      ensure_installed = { "ts_ls", "lua_ls" }
    })
  end
}

