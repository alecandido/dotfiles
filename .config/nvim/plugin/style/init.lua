-- use gui colors, instead of term ones
-- most terminal emulators support them at this point (and kitty does, in
-- particular)
vim.o.termguicolors = true

-- use status line only for very last window, to reduce space occupied
vim.o.laststatus = 3

-- set color scheme
local colorscheme = "nord"
vim.cmd("colorscheme " .. colorscheme)
vim.g.default_colors_name = colorscheme
