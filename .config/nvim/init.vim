lua require('plugins')

" Options
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set exrc
set relativenumber
set cursorline
set nohlsearch
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
set foldmethod=marker
set foldmarker={,}
set nofoldenable
set ic
set spell spelllang=en_us
set mouse=

" Color scheme
colo catppuccin-mocha

let mapleader=' '
" Godot Settings
let g:godot_executable = '/usr/bin/godot-mono'

" Lime Light Configuration
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:colorizer_auto_color = 1

" Syntax
syntax enable
filetype plugin on

" Goyo Settings
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!

" Nerd Tree
let g:NERDCreateDefaultMappings = 1
nnoremap <Leader>t :NERDTreeToggle<CR>

" Scripts for executing
nnoremap <F5> :!alacritty --class 'chtsh' -e bash -c "time $HOME/.scripts/executor %; read"<CR><CR>
nnoremap <F4> :!alacritty --class 'chtsh' -e bash -c "time $HOME/.scripts/executor2 %; read"<CR><CR>
nnoremap <leader>sc <cmd>:!alacritty --class 'chtsh' -e $HOME/.scripts/cht.sh<cr>

" Vista
nnoremap <C-n> :Vista!! <CR>

" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Essential
nnoremap <C-d> <C-d>zz<CR>
nnoremap <C-u> <C-u>zz<CR>

" Coc Config
inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" DAP Debugger
nnoremap <leader>bb <cmd> :lua require'dap'.toggle_breakpoint() <CR>
nnoremap <leader>br <cmd>:lua require'dap'.continue() <CR>
nnoremap <leader>bn <cmd>:lua require'dap'.step_over()<CR>
nnoremap <leader>bi <cmd>:lua require'dap'.step_into()<CR>

"Insert Mode Brackets
inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha

"Autocmd for vim
autocmd FileType c,cpp,php,processing,cs,javascript,rust inoremap {<CR> {<CR>}<Esc>ko
autocmd FileType c,cpp,php,processing,cs,javascript,python inoremap ( ()<Esc>ha
autocmd FileType markdown nnoremap <F6> <cmd>pandoc -t beamer % -o pres.pdf<CR>
"
"autocmd BufWritePost config.h,config.def.h !sudo make install

" Code Folder
autocmd FileType c,cpp,php,processing,cs AnyFoldActivate
let g:anyfold_fold_comments=1
set foldlevel=0
hi Folded term=NONE cterm=NONE

" UndoTree
nnoremap <leader>u :UndotreeToggle<CR>

" Cpp Manual
nnoremap <leader>k !cppman <cword>

" Harpoon
nnoremap <Leader>hh :lua require("harpoon.ui").toggle_quick_menu()<cr>
nnoremap <leader>ha <cmd> :lua require("harpoon.mark").add_file()<cr>
nnoremap <leader>1 :lua require("harpoon.ui").nav_file(1)<cr>
nnoremap <leader>2 :lua require("harpoon.ui").nav_file(2)<cr>
nnoremap <leader>3 :lua require("harpoon.ui").nav_file(3)<cr>
nnoremap <leader>4 :lua require("harpoon.ui").nav_file(4)<cr>
nnoremap <leader>5 :lua require("harpoon.ui").nav_file(5)<cr>
nnoremap <leader>6 :lua require("harpoon.ui").nav_file(6)<cr>

" Source Config
nnoremap <Leader>ss <cmd> source ~/.config/nvim/init.vim<cr>

" Tmux Navigation
nnoremap <C-h> <cmd> TmuxNavigateLeft<cr>
nnoremap <C-l> <cmd> TmuxNavigateRight<cr>
nnoremap <C-j> <cmd> TmuxNavigateDown<cr>
nnoremap <C-k> <cmd> TmuxNavigateUp<cr>

" Copying and pasting from both buffers
noremap <Leader>Y "*y
noremap <Leader>P "*p
noremap <Leader>y "+y
noremap <Leader>p "+p
" end

" Unity
let g:OmniSharp_server_use_mono = 1
" end
