vim.g.mapleader = ','
vim.g.maplocalleader = ','

vim.api.nvim_set_keymap('n', ':W', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ':WQ', ':wq<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', ':Wq', ':wq<CR>', { noremap = true, silent = true })

vim.keymap.set('i', 'jj', '<Esc>', { noremap = true, silent = true })

vim.keymap.set('n', 'grv', function()
  vim.cmd 'vsplit'
  vim.lsp.buf.definition()
end, { desc = 'Go to definition in vsplit' })

vim.api.nvim_create_autocmd('FileType', {
  pattern = 'qf',
  callback = function()
    vim.keymap.set('n', 'dd', function()
      local qf = vim.fn.getqflist()
      table.remove(qf, vim.fn.line '.')
      vim.fn.setqflist(qf, 'r')
    end, { buffer = true })
  end,
})
