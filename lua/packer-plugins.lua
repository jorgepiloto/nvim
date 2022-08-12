return require('packer').startup(function()
        
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Colorschemes and colorbar
  use 'jorgepiloto/volk'

  -- File navigation plugins
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} } 
  }
  use 'preservim/tagbar'

  -- VimWiki for taking notes
  use {
    'vimwiki/vimwiki',
    config = function()
        vim.g.vimwiki_list = {
            {
                path = '/home/jorge/Ansys/vimwiki',
                syntax = 'markdown',
                ext = '.md',
            }
        }
    end
  }

  -- TaskWarrior integration
  use {
    'tools-life/taskwiki'
  }

  -- Git plugins
  use 'kdheepak/lazygit.nvim'
  use 'airblade/vim-gitgutter'

  -- Language Server Protocol (LSP)
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      {'williamboman/nvim-lsp-installer'},
  
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

end)
