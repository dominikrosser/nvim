-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    if vim.g.vscode then
        use({'asvetliakov/vim-easymotion'})
    else
        -- Telescope fuzzy finder
        use {
            'nvim-telescope/telescope.nvim', tag='0.1.0',
            requires = { {'nvim-lua/plenary.nvim' } }
        }

        -- Colorsceme Rosepine
        use({
            'rose-pine/neovim',
            as = 'rose-pine',
            config = function()
                vim.cmd('colorscheme rose-pine')
            end
        })

        use( 'nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'} )
        use( 'nvim-treesitter/playground')
        use( 'theprimeagen/harpoon' )
        use( 'mbbill/undotree' )
        use( 'tpope/vim-fugitive' )
        use( 'preservim/nerdcommenter' ) -- Comment using <leader>cc, cm, c<space> etc
        --use { 'CRAG666/betterTerm.nvim' } -- Terminal
        --use { 's1n7ax/nvim-terminal' } -- Terminal
        use {"akinsho/toggleterm.nvim", tag = '*', config = function()
            require("toggleterm").setup()
        end}

        -- Statusline at the bottom
        use {
            'nvim-lualine/lualine.nvim',
            requires = { 'nvim-tree/nvim-web-devicons', opt = true }
        }

        -- LSP
        use {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v1.x',
            requires = {
                -- LSP Support
                {'neovim/nvim-lspconfig'},
                {'williamboman/mason.nvim'},
                {'williamboman/mason-lspconfig.nvim'},

                -- Autocompletion
                {'hrsh7th/nvim-cmp'},
                {'hrsh7th/cmp-buffer'},
                {'hrsh7th/cmp-path'},
                {'saadparwaiz1/cmp_luasnip'},
                {'hrsh7th/cmp-nvim-lsp'},
                {'hrsh7th/cmp-nvim-lua'},

                -- Snippets
                {'L3MON4D3/LuaSnip'},
                {'rafamadriz/friendly-snippets'},
            }
        }

        -- use( {"meatballs/notebook.nvim"} ) -- not sure if notebook will be any useful
        -- Did not work: use { 'dccsillag/magma-nvim', run = ':UpdateRemotePlugins' }

        use({"github/copilot.vim"})
    end
end)
