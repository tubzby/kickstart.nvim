return {
  'tomasiser/vim-code-dark',
  config = function()
    vim.g.codedark_modern = 1
    vim.cmd.colorscheme 'codedark'
  end,
}
