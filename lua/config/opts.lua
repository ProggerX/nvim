vim.opt.wrap = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.conceallevel = 0;

vim.opt.clipboard = 'unnamedplus'

vim.api.nvim_create_autocmd('BufWritePre', { pattern = { "*.rs" }, command = 'lua vim.lsp.buf.format()' })
vim.api.nvim_create_autocmd('BufWritePre', { pattern = { "*.hs" }, command = 'lua vim.lsp.buf.format()' })

vim.api.nvim_create_autocmd('BufWritePre', { pattern = { "*.go" }, command = 'lua require("go.format").goimports()' })

vim.g.gruvbox_material_transparent_background = 1
vim.cmd('colorscheme gruvbox-material')
