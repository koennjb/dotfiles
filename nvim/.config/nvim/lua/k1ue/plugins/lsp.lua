-- Disable LSP plugins when running in VS Code (vscode-neovim extension)
-- VS Code has its own LSP implementation, so Neovim's LSP can cause conflicts
if vim.g.vscode then
  return {}
end

return {
  'mason-org/mason-lspconfig.nvim',
  dependencies = {
    { "mason-org/mason.nvim", opts = {} },
    "folke/neodev.nvim",
    {
      "saghen/blink.cmp",
      version = '1.7.0',
      opts = {
        keymap = { preset = 'super-tab' },
        completion = { documentation = { auto_show = true } },
      }
    },
    "neovim/nvim-lspconfig"
  },
  config = function()
    require("mason-lspconfig").setup({
      automativc_enable = true,
      ensure_installed = { "ts_ls", "lua_ls" }
    })
  end
}

