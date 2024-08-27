return {
  "ellisonleao/gruvbox.nvim",
  version = "*",
  init = function()
    vim.opt.background = dark
    vim.cmd [[colorscheme gruvbox]]
  end
}
