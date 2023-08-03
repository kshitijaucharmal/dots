require('plugins')
require('lspconfig').pyright.setup{}

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
vim.opt.undodir = "~/.vim/undodir"
vim.opt.undofile = true
vim.opt.incsearch = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.foldmethod = "marker"
vim.opt.foldmarker = "{,}"
vim.opt.ic = true
vim.opt.spell = true
vim.opt.spelllang = "en_us"
vim.opt.mouse = ""

-- Couldn't find alternatives
vim.cmd([[
    set nohlsearch
    set noerrorbells
    set nowrap
    set noswapfile
    set nobackup
    set nofoldenable
]])

-- Color scheme
vim.cmd("colo moonbow")

-- Leader
vim.g.mapleader = " "

-- Godot Settings
vim.g.godot_executable = "/usr/bin/godot-mono"

-- Lime Light Configuration
vim.g.limelight_conceal_ctermfg = "gray"
vim.g.limelight_conceal_ctermfg = 240
vim.g.colorizer_auto_color = 1

-- Nerd Tree
vim.g.NERDCreateDefaultMappings = 1
vim.keymap.set("n", "<Leader>t", ":NERDTreeToggle<CR>")

-- Color
vim.keymap.set("n", "<Leader>c", ":ColorToggle<CR>")

-- Scripts for executing
vim.keymap.set("n", "<F5>", ":!kitty --class 'chtsh' -e bash -c \"time $HOME/.scripts/executor %; read\"<CR><CR>")
vim.keymap.set("n", "<F4>", ":!kitty --class 'chtsh' -e bash -c \"time $HOME/.scripts/executor2 %; read\"<CR><CR>")
vim.keymap.set("n", "<leader>sc", ":!tmux neww \"$HOME/.scripts/cht.sh\"<CR><CR>")

-- Vista
vim.keymap.set("n", "<C-n>", [[:Vista!! <CR>]])

-- Telescope
vim.keymap.set("n", "<leader>ff", ":Telescope find_files<CR>")
vim.keymap.set("n", "<leader>fg", ":Telescope live_grep<cr>")
vim.keymap.set("n", "<leader>fb", ":Telescope buffers<CR>")
vim.keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>")
vim.keymap.set("n", "<leader>ss", ":source ~/.config/nvim/init.lua<cr>")

-- Essential
vim.keymap.set("n", "<C-d>", "<C-d>zz<CR>")
vim.keymap.set("n", "<C-u>", "<C-u>zz<CR>")
