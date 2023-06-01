vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'folke/tokyonight.nvim'
    use 'mbbill/undotree'
    use(
        'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' }
    )
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippet
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }
    use 'm4xshen/autoclose.nvim'
    use 'nvim-tree/nvim-tree.lua'
    use "yamatsum/nvim-cursorline"
    use 'karb94/neoscroll.nvim'
    use 'nvim-lualine/lualine.nvim'

    use 'romgrk/barbar.nvim'
    use 'nvim-web-devicons'
    use "terrortylor/nvim-comment"
    use "p00f/nvim-ts-rainbow"
    use 'jwalton512/vim-blade'
end)
