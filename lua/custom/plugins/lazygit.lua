return {
  'kdheepak/lazygit.nvim',
  config = function()
    vim.keymap.set('n', '<leader>tg', ':LazyGit<CR>', { desc = 'call lazygit' })
  end,
}
