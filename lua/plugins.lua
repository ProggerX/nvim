return {
  { 'akinsho/toggleterm.nvim', opts = {} },
  { 'sainnhe/gruvbox-material' },
  { 'stevearc/oil.nvim', opts = {
    columns = {
      'permissions'
    },
    view_options = {
      show_hidden = true
    }
  } },
  { 'folke/trouble.nvim', opts = {} },
  'nvim-telescope/telescope.nvim',
  { 'akinsho/bufferline.nvim', version = '*', dependencies = 'nvim-tree/nvim-web-devicons', event = 'BufAdd', opts = {} },
  'neovim/nvim-lspconfig',
  { 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },
  {
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    build = ':TSUpdate',
    lazy = false,
    config = function()
      require('nvim-treesitter').setup {}
      require('nvim-treesitter').install { 'haskell', 'go', 'nix', 'cpp', 'markdown' }
    end,
  },

  { 'folke/flash.nvim', event = 'VeryLazy', opts = { modes = { search = { enabled = true } } } },
   { 'windwp/nvim-autopairs', event = 'InsertEnter', config = true },
  { 'kylechui/nvim-surround', event = 'VeryLazy', opts = {} },
  { 'folke/todo-comments.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, opts = {} },
  { 'farbodsz/pointfree.nvim' },
  {
    'saghen/blink.cmp',
    dependencies = { 'rafamadriz/friendly-snippets' },
    version = '1.*',
    opts_extend = { 'sources.default' }
  },
  {
    'nvim-treesitter/nvim-treesitter-textobjects',
    branch = 'main',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    config = function()
      require('nvim-treesitter-textobjects').setup {
        select = {
          lookahead = true,
          include_surrounding_whitespace = true,
        },
      }
      local select = require('nvim-treesitter-textobjects.select')
      vim.keymap.set({ 'x', 'o' }, 'af', function() select.select_textobject('@function.outer', 'textobjects') end)
      vim.keymap.set({ 'x', 'o' }, 'if', function() select.select_textobject('@function.inner', 'textobjects') end)
      vim.keymap.set({ 'x', 'o' }, 'ac', function() select.select_textobject('@class.outer', 'textobjects') end)
      vim.keymap.set({ 'x', 'o' }, 'ic', function() select.select_textobject('@class.inner', 'textobjects') end)
      vim.keymap.set({ 'x', 'o' }, 'as', function() select.select_textobject('@local.scope', 'locals') end)
    end,
  },
  { 'ProggerX/hooglebuf', opts = {} },
  {
    'L3MON4D3/LuaSnip',
    dependencies = { 'rafamadriz/friendly-snippets' },
   },
}
