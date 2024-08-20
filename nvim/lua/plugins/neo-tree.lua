return {
  "nvim-neo-tree/neo-tree.nvim",
  version = "*",
  dependencies = {
    {"nvim-lua/plenary.nvim", version = "*"},
      {"nvim-tree/nvim-web-devicons", version = "*"},
      {"MunifTanjim/nui.nvim", version = "*"},
  },
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          ".DS_Store",
          ".git",
          ".idea",
          "thumbs.db",
        },
      },
    },
  },
}
