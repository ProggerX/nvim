local ht = require('haskell-tools')
local opts = { noremap = true, silent = true }
-- haskell-language-server relies heavily on codeLenses,
-- so auto-refresh (see advanced configuration) is enabled by default
vim.keymap.set('n', '<space>cl', vim.lsp.codelens.run, opts)
-- Hoogle search for the type signature of the definition under the cursor
vim.keymap.set('n', '<space>hs', ht.hoogle.hoogle_signature, opts)
-- Evaluate all code snippets
vim.keymap.set('n', '<space>ea', ht.lsp.buf_eval_all, opts)
-- Toggle a GHCi repl for the current package
vim.keymap.set('n', '<leader>rr', '<CMD>TermExec cmd="cabal repl && exit" direction=float<CR>', opts)
vim.keymap.set('n', '<leader>hr', '<CMD>TermExec cmd="cabal repl && exit" direction=horizontal<CR>', opts)
