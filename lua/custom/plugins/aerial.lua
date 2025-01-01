return {
  'stevearc/aerial.nvim',
  config = function()
    require('aerial').setup {
      on_attach = function(bufnr)
        vim.keymap.set('n', '<leader>os', '<cmd>AerialToggle!<CR>', { desc = '[O]utline [S]ymbol' })
      end,
    }
  end,
}
