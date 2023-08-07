-- Nerd Tree
vim.g.NERDCreateDefaultMappings = 1
vim.keymap.set("n", "<Leader>t", ":NERDTreeToggle<CR>")

-- Color
vim.keymap.set("n", "<Leader>c", ":ColorToggle<CR>")

-- Scripts for executing
vim.keymap.set("n", "<F5>", ":!tmux neww \"time $HOME/.scripts/executor %; read\"<CR><CR>")
vim.keymap.set("n", "<F4>", ":!tmux neww \"time $HOME/.scripts/executor2 %; read\"<CR><CR>")
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
