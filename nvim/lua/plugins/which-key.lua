return {
  "folke/which-key.nvim",
  version = "*",
  event = "VeryLazy",
  opts = {
    preset = "helix",
    delay = 800,
    spec = {
      { "<leader>\\", "<cmd>noh<cr>",                       desc = "Clear search highlight",  mode = "n" },
      { "<leader>b",  "<cmd>Neotree buffers float<cr>",     desc = "Buffer select",           mode = "n" },
      { "<leader>d",  "<cmd>Neotree document_symbols<cr>",  desc = "File structure explorer", mode = "n" },
      { "<leader>e",  "<cmd>Neotree reveal<cr>",            desc = "File explorer",           mode = "n" },
      { "<leader>f",  "<cmd>Telescope find_files<cr>",      desc = "Find file",               mode = "n" },
      { "<leader>g",  "<cmd>Neotree git_status reveal<cr>", desc = "Git status explorer",     mode = "n" },
      { "<leader>h",  "<cmd>Gitsigns preview_hunk<cr>",     desc = "Preview git hunk",        mode = "n" },
      { "<leader>m",  "<cmd>FormatToggle<cr>",              desc = "Toggle autoformatting",   mode = "n" },
      { "<leader>s",  "<cmd>Telescope live_grep<cr>",       desc = "Search text",             mode = "n" },
    }
  },
}
