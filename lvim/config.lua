-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--

lvim.transparent_window = true

lvim.keys.normal_mode["*"] = "*``"
lvim.keys.normal_mode["#"] = "#``"

lvim.builtin.which_key.mappings["lo"] = { "<cmd>SymbolsOutline<cr>", "Outline" }

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "intelephense" })
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "phpactor"
end, lvim.lsp.automatic_configuration.skipped_servers)

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "phpcsfixer", filetypes = { "php" } },
  { command = "yamlfmt", filetypes = { "yaml" } },
}

local linters = require "lvim.lsp.null-ls.linters"
linters.setup { { command = "jsonlint", filetypes = { "json" } } }

lvim.plugins = {
  {
    "zbirenbaum/copilot-cmp",
    event = "InsertEnter",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup({
          filetypes = {
            php = true,
            javascript = true,
            ["*"] = false,
          }
        })
        require("copilot_cmp").setup()
      end, 100)
    end,
  },
  {
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup()
    end,
  },
  {
    "kevinhwang91/nvim-bqf",
    event = { "BufRead", "BufNew" },
    config = function()
      require("bqf").setup({
        auto_enable = true,
        preview = {
          win_height = 12,
          win_vheight = 12,
          delay_syntax = 80,
          border_chars = { "┃", "┃", "━", "━", "┏", "┓", "┗", "┛", "█" },
        },
        func_map = {
          vsplit = "",
          ptogglemode = "z,",
          stoggleup = "",
        },
        filter = {
          fzf = {
            action_for = { ["ctrl-s"] = "split" },
            extra_opts = { "--bind", "ctrl-o:toggle-all", "--prompt", "> " },
          },
        },
      })
    end,
  },
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    config = function()
      require("symbols-outline").setup({
        symbols = {
          File = { icon = lvim.icons.kind.File, hl = "@text.uri" },
          Module = { icon = lvim.icons.kind.Module, hl = "@namespace" },
          Namespace = { icon = lvim.icons.kind.Namespace, hl = "@namespace" },
          Package = { icon = lvim.icons.kind.Package, hl = "@namespace" },
          Class = { icon = lvim.icons.kind.Class, hl = "@constant" },
          Method = { icon = lvim.icons.kind.Method, hl = "@method" },
          Property = { icon = lvim.icons.kind.Property, hl = "@method" },
          Field = { icon = lvim.icons.kind.Field, hl = "@field" },
          Constructor = { icon = lvim.icons.kind.Constructor, hl = "@constructor" },
          Enum = { icon = lvim.icons.kind.Enum, hl = "@type" },
          Interface = { icon = lvim.icons.kind.Interface, hl = "@type" },
          Function = { icon = lvim.icons.kind.Function, hl = "@function" },
          Variable = { icon = lvim.icons.kind.Variable, hl = "Statement" },
          Constant = { icon = lvim.icons.kind.Constant, hl = "Statement" },
          String = { icon = lvim.icons.kind.String, hl = "@string" },
          Number = { icon = lvim.icons.kind.Number, hl = "@number" },
          Boolean = { icon = lvim.icons.kind.Boolean, hl = "@boolean" },
          Array = { icon = lvim.icons.kind.Array, hl = "@constant" },
          Object = { icon = lvim.icons.kind.Object, hl = "@constant" },
          Key = { icon = lvim.icons.kind.Key, hl = "@type" },
          Null = { icon = lvim.icons.kind.Null, hl = "@type" },
          EnumMember = { icon = lvim.icons.kind.EnumMember, hl = "@field" },
          Struct = { icon = lvim.icons.kind.Struct, hl = "@type" },
          Event = { icon = lvim.icons.kind.Event, hl = "@type" },
          Operator = { icon = lvim.icons.kind.Operator, hl = "@operator" },
          TypeParameter = { icon = lvim.icons.kind.TypeParameter, hl = "@parameter" },
          Component = { icon = lvim.icons.kind.Function, hl = "@function" },
          Fragment = { icon = lvim.icons.kind.Constant, hl = "@constant" },
        },
      })
    end,
  },
}
