-- vim: set ft=lua

-- ===================
-- num's neovim config
-- ===================

require('impatient')

require("num-config.set")
require("num-config.autocmd")
require("num-config.keys")
require("num-config.packer")

vim.cmd [[colorscheme tonight]]
