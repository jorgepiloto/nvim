return require('packer').startup(function()
        
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Install the volk color settings
  use 'jorgepiloto/volk'

  -- Telescope: find, Filter, Preview, Pick. All lua, all the time. 
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} } 
  }

  -- Execute lazygit using telescope
  use 'kdheepak/lazygit.nvim'


end)
