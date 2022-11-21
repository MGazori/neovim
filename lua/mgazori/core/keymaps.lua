-- set leader key to space instead default
vim.g.mapleader = ' '

local keymap = vim.keymap

---------------------
-- General Keymaps --
---------------------

-- custom keys for quit
keymap.set('n','<C-q>', '<cmd>q<CR>') -- Control key + q to quit
keymap.set('n','œ', '<cmd>q<CR>') -- Option key + q to quit on macos

-- clear search highlights
keymap.set('n', '<leader>nh', '<cmd>nohl<CR>')

-- delete without copying into register (clipboard)
keymap.set('n', 'x', '"_x')
keymap.set('n', 'dd', '"_dd')

-- terminal manage
keymap.set('n', '<C-,>', '<cmd>split | terminal<CR>') -- Control key + , to open terminal
keymap.set('n', '≤', '<cmd>split | terminal<CR>') -- option key + , to open terminal on macos
keymap.set('t', '<ESC>', '<C-\\><C-n>') -- option key + , to open terminal on macos

-- window management
keymap.set('n', '<leader>sv', '<C-w>v') -- split window vertically
keymap.set('n', '<leader>sh', '<C-w>s') -- split window horizontally
keymap.set('n', '<leader>se', '<C-w>=') -- make split windows equal width & height
keymap.set('n', '<leader>sx', '<cmd>close<CR>') -- close current split window

-- tab management
keymap.set('n', '<leader>to', '<cmd>tabnew<CR>') -- open new tab
keymap.set('n', '<leader>tx', '<cmd>tabclose<CR>') -- close current tab
keymap.set('n', '<leader>tn', '<cmd>tabn<CR>') --  go to next tab
keymap.set('n', '<leader>tp', '<cmd>tabp<CR>') --  go to previous tab
keymap.set('n', '<leader>tp', '<cmd>tabfirst<CR>') --  go to first tab
keymap.set('n', '<leader>tp', '<cmd>tablast<CR>') --  go to last tab

-- auto bracket -- NOTE: Comment this section (auto bracket) if you installed autopairs plugin!
-- keymap.set('i', '"', '""<left>')
-- keymap.set('i', '\'', '\'\'<left>')
-- keymap.set('i', '(', '()<left>')
-- keymap.set('i', '[', '[]<left>')
-- keymap.set('i', '{', '{}<left>')
-- keymap.set('i', '{<CR>', '{<CR><CR>}<UP>')
-- keymap.set('i', '[<CR>', '[<CR><CR>]<UP>')
-- keymap.set('i', '{;<CR>', '{<CR><CR>};<UP>')
-- keymap.set('i', '[;<CR>', '[<CR><CR>];<UP>')

-- split movement
keymap.set('n', '<leader><Up>', '<C-w><Up><CR>')
keymap.set('n', '<leader><Right>', '<C-w><Right><CR>')
keymap.set('n', '<leader><Down>', '<C-w><Down><CR>')
keymap.set('n', '<leader><Left>', '<C-w><Left><CR>')


----------------------
-- Plugin Keybinds  --
----------------------

-- vim-maximizer
keymap.set("n", "<leader>sm", "<cmd>MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", "<cmd>NvimTreeFindFileToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- tagbar
keymap.set('n', '<leader>T', '<cmd>TagbarToggle<CR>')
