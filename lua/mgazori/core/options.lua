local opt = vim.opt

-- initial options
opt.number = true
opt.relativenumber = true
opt.autoindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.softtabstop = 4
opt.encoding = "UTF-8"
opt.termbidi = true
opt.wrap = false
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
opt.iskeyword:append("-")
opt.termguicolors = true
opt.backspace = "indent,eol,start" 
opt.updatetime = 300
-- opt.mouse = a -- actived by default in neovim v0.8 and latest

