-- Initialize Lazy

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Configure lazy.nvim
require("lazy").setup({
  spec = {
    -- Import plugins from lua/k1ue/plugins/ directory
    { import = "k1ue.plugins" },
  },
  checker = {
    enabled = true,
    -- notify = false,
  },
  change_detection = {
    -- notify = false,
  },
})
