-- vim: set ft=lua

-- ===================
-- num's neovim config
-- ===================

require('impatient')

require("num-config.set")
require("num-config.autocmd")
require("num-config.keys")
require("num-config.packer")

vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_comments = false

vim.cmd [[set cursorline]]
vim.cmd [[hi CursorLine guibg=#181A1F]]

vim.cmd [[colorscheme tokyonight]]
