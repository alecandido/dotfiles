-- powerline fonts are enabled before loading the plugin, check
-- lua/before/airlie.vim

-- enable tabline (upper one)
vim.g["airline#extensions#tabline#enabled"] = true
-- use different left separator for current element
vim.g["airline#extensions#tabline#alt_sep"] = true
-- tab number
vim.g["airline#extensions#tabline#tab_nr_type"] = true

-- enable tmuxline: tmux integration
vim.g["airline#extensions#tmuxline#enabled"] = true

vim.g.tmuxline_preset = "full"
