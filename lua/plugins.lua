return {
  {
    'stevearc/aerial.nvim',
    opts = {
      on_attach = function(bufnr)
        vim.keymap.set('n', '{', '<cmd>AerialPrev<CR>', { buffer = bufnr })
        vim.keymap.set('n', '}', '<cmd>AerialNext<CR>', { buffer = bufnr })
      end,
    },
    dependencies = {
       'nvim-treesitter/nvim-treesitter',
       'nvim-tree/nvim-web-devicons'
    },
  },
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
  {
    'ray-x/go.nvim',
    dependencies = {
      'ray-x/guihua.lua',
      'neovim/nvim-lspconfig',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      require('go').setup()
    end,
    event = {'CmdlineEnter'},
    ft = {'go', 'gomod'},
  },
  { 'folke/flash.nvim', event = 'VeryLazy', opts = { modes = { search = { enabled = true } } } },
  { 'windwp/nvim-autopairs', event = 'InsertEnter', config = true },
  { 'numToStr/Comment.nvim', opts = {} },
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
  { 'wakatime/vim-wakatime', lazy = false },
  { 'folke/drop.nvim', opts = {} },
  { 'ProggerX/hooglebuf', opts = {} },
  {
    'L3MON4D3/LuaSnip',
    dependencies = { 'rafamadriz/friendly-snippets' },
  },
  { 'RRethy/base16-nvim', lazy = false },
  { "axsaucedo/neovim-power-mode" },
}
