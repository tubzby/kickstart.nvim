return {
  'stevearc/aerial.nvim',
  config = function()
    require('aerial').setup {
      on_attach = function(bufnr)
        vim.keymap.set('n', '<leader>ts', '<cmd>AerialToggle!<CR>', { desc = '[T]oggle [S]ymbol' })
      end,
    }
  end,
}
