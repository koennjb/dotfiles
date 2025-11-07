-- Setting key bindings
vim.g.mapleader = " "

-- Netrw
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move text down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move text up" })

-- Keep cursor centered when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down and center" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up and center" })
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result and center" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result and center" })

-- Replace selection without overwriting yank buffer
vim.keymap.set("x", "<leader>p", [["_dP]])
-- Copy to system clipboard (normal and whole line)
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>yy", [["+Y]])
-- Delete without affecting yank buffer
vim.keymap.set({ "n", "v" }, "<leader>d", "\"_d")

-- Exit insert mode shortcut
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode" })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right" })

-- Quick reload of config
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

