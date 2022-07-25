local lualine = require('lualine')

lualine.setup {
    options = {
        icons_enabled = false,
        theme = 'tonight',
        component_separators = {},
        section_separators = {},
        disabled_filetypes = {},
        always_divide_middle = true,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {
            -- { "%=" },
            -- {
            --     'filename',
            --     symbols = { readonly = '[RO]' },
            -- }
        },
        lualine_x = {'filetype'},
        lualine_y = {},
        lualine_z = {'progress', 'location'},
    },
    inactive_sections = {}, -- laststatus = 3 aka don't need this probably
    tabline = {},
    extensions = {},
}
