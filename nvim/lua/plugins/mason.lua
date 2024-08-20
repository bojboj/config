return {
  {
    "williamboman/mason.nvim",
    version = "*",
    opts = {}
  },
  {
    "williamboman/mason-lspconfig.nvim",
    version = "*",
    opts = {
      ensure_installed = {
        "lua_ls",
        "phpactor",
      }
    }
  }
}
