return {
  'kdheepak/lazygit.nvim',
  config = function()
    vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', { desc = 'call lazygit' })
  end,
}
