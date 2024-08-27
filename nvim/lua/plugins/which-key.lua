return {
  "folke/which-key.nvim",
  version = "*",
  event = "VeryLazy",
  opts = {
    preset = "helix",
    delay = 800,
    spec = {
      { "<leader>\\", "<cmd>noh<cr>",                   desc = "Clear search highlight", mode = "n" },
      { "<leader>h",  "<cmd>Gitsigns preview_hunk<cr>", desc = "Preview git hunk",       mode = "n" },
    }
  },
}
