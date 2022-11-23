-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- get lualine nightfly theme
local lualine_nightfly = require("lualine.themes.nightfly")

-- new colors for theme
local new_colors = {
  blue = "#65D1FF",
  green = "#3EFFDC",
  violet = "#FF61EF",
  yellow = "#FFDA7B",
  black = "#000000",
}

-- change nightlfy theme colors
lualine_nightfly.normal.a.bg = new_colors.blue
lualine_nightfly.insert.a.bg = new_colors.green
lualine_nightfly.visual.a.bg = new_colors.violet
lualine_nightfly.command = {
  a = {
    gui = "bold",
    bg = new_colors.yellow,
    fg = new_colors.black, -- black
  },
}

local function os_icon()
    local icons = {
      unix = '', -- e712
      dos = '', -- e70f
      mac = '' -- e711
    }
    if vim.fn.has('mac') == 1 then return icons.mac
    elseif vim.fn.has('win32') == 1 then return icons.dos
    else return icons.unix end
end

-- configure lualine with modified theme
lualine.setup({
	options = {
		theme = lualine_nightfly,
	},
	sections = {
		lualine_x = {'encoding', os_icon, 'filetype'} --original: lualine_x = {'encoding', 'fileformat', 'filetype'},
	},
})
