vim.g.mapleader = ' '

-- FileManagers
vim.keymap.set('n', '-', '<CMD>Oil<CR>')

-- Tabs
vim.keymap.set('n', '<A-Tab>', '<CMD>bnext<CR>')
vim.keymap.set('n', '<A-.>', '<CMD>bnext<CR>')
vim.keymap.set('n', '<A-,>', '<CMD>bprev<CR>')
vim.keymap.set('n', '<leader>w', '<CMD>bdel<CR>')

-- Terminal
vim.keymap.set('n', '<leader>f', '<CMD>ToggleTerm direction=float<CR>')
vim.keymap.set('t', '<C-n>', '<C-\\><C-n>')
-- vim.keymap.set('t', '<Esc>', '<C-\\><C-n><C-w>k')
vim.keymap.set('n', '<leader>vt', '<CMD>ToggleTerm direction=vertical size=50<CR>')

-- Telescope
vim.keymap.set('n', 'tf', '<CMD>Telescope find_files<CR>', {desc = 'Search files'})
vim.keymap.set('n', 'tg', '<CMD>Telescope live_grep<CR>', {desc = 'Telescope live grep'})

-- Other
vim.keymap.set('n', '<leader>q', '<CMD>q<CR>')
vim.keymap.set('n', 'zz', 'ZZ')
vim.keymap.set('n', '<leader>s', '<:%s/')
vim.keymap.set('n', '<Esc>', '<CMD>noh<CR>')
vim.keymap.set('n', '<leader>a', '<cmd>AerialNavToggle<CR>')
vim.keymap.set('n', '<leader>A', '<cmd>AerialToggle!<CR>')

-- Windows
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Trouble
vim.keymap.set('n', '<leader>tt', '<CMD>Trouble diagnostics toggle<CR>')
vim.keymap.set('n', '<leader>tl', '<CMD>Trouble lsp toggle<CR>')
