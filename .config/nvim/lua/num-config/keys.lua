local map = vim.api.nvim_set_keymap

local function nmap(...) vim.keymap.set("n", ...) end
local function imap(...) vim.keymap.set("i", ...) end
local function vmap(...) vim.keymap.set("v", ...) end

local opts = { noremap = true }

-- Splits
nmap("<C-J>", "<C-W><C-J>", opts)
nmap("<C-K>", "<C-W><C-K>", opts)
nmap("<C-L>", "<C-W><C-L>", opts)
nmap("<C-H>", "<C-W><C-H>", opts)

-- Arrow keys
nmap("<Up>", "<Nop>", opts)
nmap("<Down>", "<Nop>", opts)
nmap("<Left>", "<Nop>", opts)
nmap("<Right>", "<Nop>", opts)

imap("<Up>", "<Nop>", opts)
imap("<Down>", "<Nop>", opts)
imap("<Left>", "<Nop>", opts)
imap("<Right>", "<Nop>", opts)

-- Quickly open my init.vim then let me reload the config
nmap("<leader>v", "<cmd>vs $MYVIMRC<CR>", opts)
nmap("<F5>", "<cmd>source $MYVIMRC<CR>", opts)

-- nmap("J", "MaJ`a", opts)
-- nmap("n", "Nzzzv", opts)
-- nmap("N", "Nzzzv", opts)

nmap("H", "<Nop>", opts)
nmap("L", "<Nop>", opts)

vim.api.nvim_exec([[
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>yy "+yy

nnoremap <leader>p "+p
vnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>P "+P
]], true)

vim.api.nvim_exec([[
nnoremap <leader>tm :Telescope man_pages<cr>
nnoremap <leader>thl :Telescope highlights<cr>
nnoremap <leader>th :Telescope help_tags<cr>
]], true)
