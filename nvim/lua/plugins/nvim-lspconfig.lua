return {
  "neovim/nvim-lspconfig",
  version = "*",
  dependencies = {
    { "lukas-reineke/lsp-format.nvim", version = "*" },
    { "hrsh7th/cmp-nvim-lsp",          version = "*" },
  },
  config = function()
    require("lsp-format").setup {}

    local on_attach = function(client, bufnr)
      require("lsp-format").on_attach(client, bufnr)
    end

    local capabilities = require('cmp_nvim_lsp').default_capabilities()

    require("lspconfig").lua_ls.setup { on_attach = on_attach, capabilities = capabilities }
    require("lspconfig").phpactor.setup { on_attach = on_attach, capabilities = capabilities }
  end,
}
