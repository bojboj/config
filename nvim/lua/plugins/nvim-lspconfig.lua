return {
  "neovim/nvim-lspconfig",
  version = "*",
  config = function()
    require("lspconfig").lua_ls.setup {}
    require("lspconfig").phpactor.setup {}
  end,
}
