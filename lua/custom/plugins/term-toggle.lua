return {
  'akinsho/toggleterm.nvim',
  config = function()
    require('toggleterm').setup {
      direction = 'float',
    }
    vim.keymap.set('n', '<leader>tt', '<cmd>ToggleTerm<cr>', { desc = '[T]oggle [T]erminal' })
  end,
}
