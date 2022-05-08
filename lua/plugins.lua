require('packer').startup(function()

  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'

  --themes
  use 'morhetz/gruvbox'
  use 'arcticicestudio/nord-vim'
  use 'overcache/NeoSolarized'
  use 'sjl/badwolf'

  --completion
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  --luasnip
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  --nvim-autopairs
  use 'windwp/nvim-autopairs'
  --lualine
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
end

)
