local autocmd = vim.api.nvim_create_autocmd

autocmd("BufWritePost", {
    pattern = "*picom.conf",
    command = "!pkill picom && picom -b",
})

autocmd("BufWritePre", {
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

autocmd("FileType", {
    pattern = "json",
    command = "nnoremap <leader>f :.!jq .<CR>"
})

autocmd("FileType", {
    pattern = {"text", "markdown"},
    command = "set colorcolumn=80"
})

local yank_group = vim.api.nvim_create_augroup('HighlightYank', {})

autocmd("TextYankPost", {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 80,
        })
    end,
})

-- Yes, I do not understand vim.api.nvim_create_augroup
vim.api.nvim_exec([[
augroup resCur
    autocmd!
    autocmd BufReadPost * call setpos(".", getpos("'\""))
augroup END
]], true)
