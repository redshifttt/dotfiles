vim.g.mapleader = ","

vim.opt.title = true

vim.opt.encoding = "utf-8"

vim.opt.number = true

vim.opt.hidden = false

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.magic = true

vim.opt.smartcase = true
vim.opt.showmatch = true

vim.opt.errorbells = true
vim.opt.visualbell = true

vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true

vim.opt.showmode = false
vim.opt.fileformats = "unix,dos,mac"

vim.opt.termguicolors = true

vim.opt.scrolloff = 20
vim.opt.sidescrolloff = 20

vim.opt.undofile = true

vim.opt.showcmd = true

vim.opt.conceallevel = 0
vim.opt.shortmess:append("I")

vim.opt.wrap = false

vim.opt.list = true
vim.opt.listchars = { nbsp = "¬", tab = "→·", trail = "-", extends = ">" }

vim.opt.laststatus = 3
vim.opt.winbar = "%n %f %m"

vim.opt.clipboard:append("unnamedplus")

-- Turn off a bunch of shit, still gets sourced on startup unfortunately
vim.g.loaded_gzip = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_zip = 1
vim.g.loaded_zipPlugin = 1

vim.g.loaded_getscript = 1
vim.g.loaded_getscriptPlugin = 1

vim.g.loaded_vimball = 1
vim.g.loaded_vimballPlugin = 1

vim.g.loaded_matchit = 1
vim.g.loaded_matchparen = 1

vim.g.loaded_2html_plugin = 1
vim.g.loaded_logiPat = 1
vim.g.loaded_rrhelper = 1

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrwSettings = 1
vim.g.loaded_netrwFileHandlers = 1
