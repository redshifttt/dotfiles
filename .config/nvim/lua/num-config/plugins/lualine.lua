local lualine = require('lualine')

-- lualine.setup {
--     options = {
--         icons_enabled = false,
--         theme = 'tokyonight',
--         component_separators = { left = '', right = ''},
--         section_separators = {},
--         disabled_filetypes = {},
--         always_divide_middle = true,
--     },
--     sections = {
--         lualine_a = {'mode'},
--         lualine_b = {'branch', 'diff', {'diagnostics', sources={'nvim_diagnostic'}}},
--         lualine_c = {{ 'filename', symbols = { readonly = '[RO]' } }},
--         lualine_x = {'filetype'},
--         lualine_y = {'progress'},
--         lualine_z = {'location'},
--     },
--     inactive_sections = {}, -- laststatus = 3 aka don't need this probably
--     tabline = {},
--     extensions = {},
-- }