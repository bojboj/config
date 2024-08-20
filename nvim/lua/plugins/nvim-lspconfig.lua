return {
  "neovim/nvim-lspconfig",
  version = "*",
  config = function()
    require("lspconfig").phpactor.setup {}
  end,
}
