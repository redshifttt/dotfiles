local treesitter = require('nvim-treesitter.configs')

treesitter.setup {
    ensure_installed = "all", -- One of "all", "maintained" (parsers with maintainers), or a list of languages
    sync_install = false, -- Install languages synchronously (only applied to `ensure_installed`)
    ignore_install = {}, -- List of parsers to ignore installing
    highlight = {
        enable = true, -- `false` will disable the whole extension
        disable = {}, -- list of language that will be disabled
        additional_vim_regex_highlighting = false,
    },
    indent = { enable = true },
}
