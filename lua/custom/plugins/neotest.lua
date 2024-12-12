return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-neotest/neotest-go',
    'rouge8/neotest-rust',
    'nvim-neotest/neotest-plenary',
    'nvim-neotest/neotest-vim-test',
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-go' {
          args = { '-count=1', '-timeout=60s' },
        },
        require 'neotest-rust' {
          args = { '--no-capture' },
        },
        require 'neotest-plenary',
        require 'neotest-vim-test' {
          ignore_file_types = { 'python', 'vim', 'lua' },
        },
      },
    }
    vim.keymap.set('n', '<leader>ur', ':Neotest run<CR>', { desc = '[R]un neo test' })
    vim.keymap.set('n', '<leader>uo', ':Neotest output<CR>', { desc = 'show neo test [O]utput' })
    vim.keymap.set('n', '<leader>ua', ':Neotest attach<CR>', { desc = '[A]ttach neo test' })
    vim.keymap.set('n', '<leader>us', ':Neotest stop<CR>', { desc = '[S]top neo test' })
  end,
}
