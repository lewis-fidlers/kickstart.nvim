vim.g.mapleader = ','
vim.g.maplocalleader = ','

vim.api.nvim_set_keymap('n', ':W', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ':WQ', ':wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ':Wq', ':wq<CR>', { noremap = true, silent = true })

vim.keymap.set('i', 'jj', '<Esc>', { noremap = true, silent = true })
