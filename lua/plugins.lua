return {
	{
		'stevearc/aerial.nvim',
		opts = {
			on_attach = function(bufnr)
				vim.keymap.set("n", "{", "<cmd>AerialPrev<CR>", { buffer = bufnr })
				vim.keymap.set("n", "}", "<cmd>AerialNext<CR>", { buffer = bufnr })
			end,
		},
		dependencies = {
			 "nvim-treesitter/nvim-treesitter",
			 "nvim-tree/nvim-web-devicons"
		},
	},
	{ 'nvim-lualine/lualine.nvim', opts = {} },
	{ 'akinsho/toggleterm.nvim', opts = {} },
	{ 'sainnhe/gruvbox-material', opts = {} },
	{ 'stevearc/oil.nvim', opts = {} },
	{ 'folke/trouble.nvim', opts = {} },
	'nvim-telescope/telescope.nvim',
	{ 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons', opts = {} },
	{ 'folke/noice.nvim', event = 'VeryLazy', opts = {}, dependencies = { 'MunifTanjim/nui.nvim', { 'rcarriga/nvim-notify', opts = {background_colour = '#000000'} } }, },
	'goolord/alpha-nvim',
	'neovim/nvim-lspconfig',
	{ 'lukas-reineke/indent-blankline.nvim', main = 'ibl', opts = {} },
	'nvim-treesitter/nvim-treesitter',
	{
		"ray-x/go.nvim",
		dependencies = {
			"ray-x/guihua.lua",
			"neovim/nvim-lspconfig",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("go").setup()
		end,
		event = {"CmdlineEnter"},
		ft = {"go", 'gomod'},
	},
	{ 'folke/flash.nvim', event = 'VeryLazy', opts = { modes = { search = { enabled = true } } } },
	{ 'windwp/nvim-autopairs', event = 'InsertEnter', config = true },
	{ 'numToStr/Comment.nvim', opts = {} },
	{ 'kylechui/nvim-surround', event = 'VeryLazy', opts = {} },
	{ 'folke/todo-comments.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, opts = {} },
	{
		'mrcjkb/haskell-tools.nvim',
		version = '*',
		lazy = false,
	},
	{ "farbodsz/pointfree.nvim" },
	{
		'saghen/blink.cmp',
		dependencies = { 'rafamadriz/friendly-snippets' },
		version = '1.*',
		opts_extend = { "sources.default" }
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		lazy = false,
		---@module "neo-tree"
		---@type neotree.Config?
		opts = {
			
		},
	},
	'nvim-treesitter/nvim-treesitter-textobjects'
}
