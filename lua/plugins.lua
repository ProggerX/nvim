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
	{ 'nvim-treesitter/nvim-treesitter', branch = 'master' },
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
	'nvim-treesitter/nvim-treesitter-textobjects',
	{ 'wakatime/vim-wakatime', lazy = false },
	{ 'folke/drop.nvim', opts = {} },
	{ 'ProggerX/hooglebuf', opts = {} },
	{
		'L3MON4D3/LuaSnip',
		dependencies = { 'rafamadriz/friendly-snippets' },
	},
	{ 'RRethy/base16-nvim', lazy = false },
}
