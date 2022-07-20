local packer = require("packer")

return packer.startup(function(use)
    use {
        'wbthomason/packer.nvim',
    }

    use 'lewis6991/impatient.nvim'

    use {
        'neovim/nvim-lspconfig',
        ft = { "c", "python", "lua" },
        config = function() require("num-config.plugins.lsp") end,
    }

    use {
        'hrsh7th/nvim-cmp',
        requires = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'hrsh7th/cmp-path',
        },
    }

    use {
        'nvim-telescope/telescope.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function() require("num-config.plugins.telescope") end,
    }

    use {
        'folke/tokyonight.nvim',
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function() require("num-config.plugins.treesitter") end,
    }

    use {
        'RRethy/vim-illuminate',
        config = function() require("num-config.plugins.illuminate") end,
    }

    use {
        "ellisonleao/glow.nvim",
        branch = 'main',
        ft = "markdown",
    }

    use 'tpope/vim-commentary'
    use 'tpope/vim-surround'
    use 'dstein64/vim-startuptime'

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function() require("num-config.plugins.lualine") end,
    }

    use {
        'j-hui/fidget.nvim',
        ft = { "c", "python", "lua" },
    }

    use {
        'lukas-reineke/indent-blankline.nvim',
        config = function() require("num-config.plugins.indent-blankline") end,
    }

    use {
        "rebelot/heirline.nvim",
        config = function() require("num-config.plugins.heirline") end,
    }
end)
