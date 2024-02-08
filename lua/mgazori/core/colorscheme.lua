-- if colorscheme doesn't install do nothing and print the problem! 
local colorScheme = 'nightfly' -- light theme catppuccin-latte
--local colorScheme = 'desert' -- light theme catppuccin-latte
local status, _ = pcall(vim.cmd, 'colorscheme ' .. colorScheme)
if not status then
  print('Colorscheme ' .. colorScheme .. ' not found!') -- print error if colorscheme not installed or worked properly
  print('Go to colorscheme.lua and fix the problem') -- hint for file placing
  return
end
