local file_info = {
    provider = "%f",
}

local statusline = {
    { file_info }
}

require'heirline'.setup(statusline)
