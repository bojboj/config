return {
  "nvim-lualine/lualine.nvim",
  version = "*",
  dependencies = {
    { "nvim-tree/nvim-web-devicons", version = "*" },
  },
  opts = {
    options = {
      theme = "dracula",
      section_separators = "",
      component_separators = "",
      disabled_filetypes = {
        "neo-tree"
      }
    }
  }
}
