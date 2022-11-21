vim.api.nvim_command('autocmd TermOpen * startinsert') -- auto insert mode when terminal is open

-- add some command for for comfort
vim.api.nvim_create_user_command("Q", "q", {})
vim.api.nvim_create_user_command("W", "w", {})
vim.api.nvim_create_user_command("Wq", "wq", {})
vim.api.nvim_create_user_command("WQ", "wq", {})
vim.cmd('cnoreabbrev wQ wq')
vim.cmd('cnoreabbrev qw wq')
vim.cmd('cnoreabbrev Qw wq')
vim.cmd('cnoreabbrev qW wq')
vim.cmd('cnoreabbrev QW wq')
vim.cmd('cnoreabbrev صض wq')
