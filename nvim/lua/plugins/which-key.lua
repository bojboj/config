return {
  "folke/which-key.nvim",
  varsion = "*",
  event = "VeryLazy",
  opts = {
    delay = 800,
    spec = {
      {"<leader>\\", "<cmd>noh<cr>", desc = "Clear Search Highlight", mode = "n"},
      {"<leader>b", "<cmd>Neotree buffers float<cr>", desc = "Buffer Select", mode = "n"},
      {"<leader>e", "<cmd>Neotree reveal<cr>", desc = "File Explorer", mode = "n"},
      {"<leader>f", "<cmd>Telescope find_files<cr>", desc = "Find File", mode = "n"},
      {"<leader>g", "<cmd>Neotree git_status reveal<cr>", desc = "Git Status Explorer", mode = "n"},
      {"<leader>s", "<cmd>Telescope live_grep<cr>", desc = "Search Text", mode = "n"},
    }
  },
}
