-- Options
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.nu = true
vim.opt.exrc = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.hidden = true
vim.opt.undodir = os.getenv("HOME").."/.vim/undodir"
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.foldmethod = "marker"
vim.opt.foldmarker = "{,}"
vim.opt.ic = true
vim.opt.spell = true
vim.opt.spelllang = "en_us"
vim.opt.mouse = "a"

vim.cmd([[
    set nohlsearch
    set noerrorbells
    set nowrap
    set noswapfile
    set nobackup
    set nofoldenable
]])

-- Color scheme
vim.cmd("colo catppuccin-mocha")

-- Leader
vim.g.mapleader = " "
