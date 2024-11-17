vim.opt.showmode = false

vim.opt.wrap = false

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.conceallevel = 1;

vim.opt.clipboard = 'unnamedplus'

vim.api.nvim_create_autocmd('BufWritePre', { pattern = { "*.rs" }, command = 'lua vim.lsp.buf.format()' })

vim.api.nvim_create_autocmd('BufWritePre', { pattern = { "*.hs" }, command = 'lua vim.lsp.buf.format()' })
vim.api.nvim_create_autocmd('BufAdd', { pattern = { "*.hs" }, command = 'lua vim.opt.expandtab = true; vim.opt.shiftwidth = 2; vim.opt.tabstop = 2' })

vim.api.nvim_create_autocmd('BufWritePre', { pattern = { "*.go" }, command = 'lua require("go.format").goimports()' })
vim.api.nvim_create_autocmd('BufWritePre', { pattern = { "*.go" }, command = 'lua require("go.format").goimports()' })
