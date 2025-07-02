vim.g.mapleader = ','
vim.g.maplocalleader = ','

vim.api.nvim_set_keymap('n', ':W', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ':WQ', ':wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ':Wq', ':wq<CR>', { noremap = true, silent = true })

vim.keymap.set('i', 'jj', '<Esc>', { noremap = true, silent = true })

mapping = cmp.mapping.preset.insert {
  -- Select the [n]ext item
  ['<C-j>'] = cmp.mapping.select_next_item(),
  -- Select the [p]revious item
  ['<C-k>'] = cmp.mapping.select_prev_item(),
  -- Accept ([y]es) the completion.
  --  This will auto-import if your LSP supports it.
  --  This will expand snippets if the LSP sent a snippet.
  -- ['<C-y>'] = cmp.mapping.confirm { select = true },

  -- If you prefer more traditional completion keymaps,
  -- you can uncomment the following lines
  ['<CR>'] = cmp.mapping.confirm { select = true },

  --['<Tab>'] = cmp.mapping.select_next_item(),
  --['<S-Tab>'] = cmp.mapping.select_prev_item(),
}
