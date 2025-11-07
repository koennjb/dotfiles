-- Setting vim.opt


-- Show absolute line numbers
vim.opt.number = true
-- Show relative line numbers (numbers relative to the current line)
-- vim.opt.relativenumber = true

-- Set number of spaces a <Tab> counts for when editing
vim.opt.tabstop = 2
-- Set number of spaces a <Tab> counts for when inserting
vim.opt.softtabstop = 2
-- Number of spaces to use for each level of (auto)indent
vim.opt.shiftwidth = 2
-- Convert tabs to spaces
vim.opt.expandtab = true

-- Automatically insert indentation in a smart way (based on syntax)
vim.opt.smartindent = true

-- Don't wrap long lines — let them extend off the screen
vim.opt.wrap = false

-- Disable swap files (temporary backup files for crash recovery)
vim.opt.swapfile = false
-- Disable backup files (old versions of files)
vim.opt.backup = false
-- Set directory to store undo history files
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- Enable persistent undo (undo history saved between sessions)
vim.opt.undofile = true

-- Disable highlighting of search matches after search is done
vim.opt.hlsearch = false
-- Enable incremental search (shows matches as you type)
vim.opt.incsearch = true

-- Enable 24-bit RGB color in the terminal (for better themes)
vim.opt.termguicolors = true
-- Always show the sign column (used for git, diagnostics, etc.)
vim.opt.signcolumn = "yes"

-- Keep 8 lines visible above/below the cursor when scrolling
vim.opt.scrolloff = 8
-- Decrease time (ms) before writing swap and triggering CursorHold
vim.opt.updatetime = 50

-- Draw a vertical line at column 80 (to indicate max line length)
vim.opt.colorcolumn = "80"

