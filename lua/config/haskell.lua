local ht = require('haskell-tools')
local opts = { noremap = true, silent = true }

vim.keymap.set('n', '<space>cl', vim.lsp.codelens.run, opts)
vim.keymap.set('n', '<space>hs', ht.hoogle.hoogle_signature, opts)
vim.keymap.set('n', '<space>ea', ht.lsp.buf_eval_all, opts)
vim.keymap.set('n', '<leader>rr', '<CMD>TermExec cmd="cabal repl && exit" direction=float<CR>', opts)
vim.keymap.set('n', '<leader>hr', '<CMD>TermExec cmd="cabal repl && exit" direction=horizontal<CR>', opts)

vim.keymap.set('n', '<leader>df', ':norm 0"dyiWo"dpa = undefined<CR>')

vim.api.nvim_create_autocmd('BufEnter', { pattern = { "*.hs" }, command = 'set expandtab | set shiftwidth=2 | set tabstop=2' })
vim.api.nvim_create_autocmd('BufEnter', { pattern = { "*.cabal" }, command = 'set expandtab | set shiftwidth=4 | set tabstop=4' })
