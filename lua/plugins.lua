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
	{ 'ziglang/zig.vim' },
	{ 'akinsho/toggleterm.nvim', opts = {} },
	-- { 'ellisonleao/gruvbox.nvim' },
	{ 'sainnhe/gruvbox-material', opts = {} },
	{ 'stevearc/oil.nvim', opts = {} },
	{ 'folke/trouble.nvim', opts = {} },
	'folke/persistence.nvim',
	{ 'folke/persistence.nvim', event = 'BufReadPre', opts = {} },
	'nvim-telescope/telescope.nvim',
	-- { 'romgrk/barbar.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
	{ 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons', opts = {} },
	{ 'folke/noice.nvim', event = 'VeryLazy', opts = {}, dependencies = { 'MunifTanjim/nui.nvim', { 'rcarriga/nvim-notify', opts = {background_colour = '#000000'} } }, },
	'goolord/alpha-nvim',
	'neovim/nvim-lspconfig',
	'hrsh7th/vim-vsnip',
	'mattn/emmet-vim',
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
	{ '2kabhishek/nerdy.nvim', dependencies = { 'stevearc/dressing.nvim', 'nvim-telescope/telescope.nvim' }, cmd = 'Nerdy' },
	{
		'christoomey/vim-tmux-navigator',
		cmd = {
			'TmuxNavigateLeft',
			'TmuxNavigateDown',
			'TmuxNavigateUp',
			'TmuxNavigateRight',
			'TmuxNavigatePrevious',
		},
		keys = {
			{ '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' },
			{ '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' },
			{ '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' },
			{ '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' },
			{ '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' },
		},
	},
	{ 'numToStr/Comment.nvim', opts = {} },
	{ 'kylechui/nvim-surround', event = 'VeryLazy', opts = {} },
	{
		"epwalsh/obsidian.nvim",
		version = "*",
		lazy = true,
		event = {
			"BufReadPre " .. vim.fn.expand "~" .. "/Documents/main-vault/*.md",
		},
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		opts = {
			workspaces = {
				{
					name = "main",
					path = "~/Documents/main-vault",
				},
			},
		},
	},
	{ 'folke/todo-comments.nvim', dependencies = { 'nvim-lua/plenary.nvim' }, opts = {} },
	{
		'mrcjkb/haskell-tools.nvim',
		version = '^4',
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
	}
}
