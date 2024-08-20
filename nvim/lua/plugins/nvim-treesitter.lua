return {
  "nvim-treesitter/nvim-treesitter",
  version = "*",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      ensure_installed = {
        "css",
        "html",
        "javascript",
        "lua",
        "php",
      },
      auto_install = true,
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
