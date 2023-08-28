-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
vim.opt.wrap = true
lvim.transparent_window = true

lvim.keys.normal_mode["*"] = "*``"
lvim.keys.normal_mode["#"] = "#``"

lvim.builtin.which_key.mappings["t"] = {
  name = "Diagnostics",
  t = { "<cmd>TroubleToggle<cr>", "trouble" },
  w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "workspace" },
  d = { "<cmd>TroubleToggle document_diagnostics<cr>", "document" },
  q = { "<cmd>TroubleToggle quickfix<cr>", "quickfix" },
  l = { "<cmd>TroubleToggle loclist<cr>", "loclist" },
  r = { "<cmd>TroubleToggle lsp_references<cr>", "references" },
}
lvim.builtin.which_key.mappings["n"] = {
  name = "Notes",
  o = { "<cmd>lua Open_note()<cr>", "Open Obsidian app" },
  n = { "<cmd>lua New_note()<cr>", "New note" },
  p = { "<cmd>ObsidianQuickSwitch<cr>", "Switch note" },
  f = { "<cmd>ObsidianFollowLink<cr>", "Follow link" },
  r = { "<cmd>ObsidianBacklinks<cr>", "List of references" },
  t = { "<cmd>ObsidianToday<cr>", "New daily note" },
  y = { "<cmd>ObsidianYesterday<cr>", "Open daily note from previous day" },
  i = { "<cmd>ObsidianTemplate<cr>", "Insert a template" },
  s = { "<cmd>ObsidianSearch<cr>", "Search for notes" },
}
lvim.builtin.which_key.vmappings["n"] = {
  name = "Notes",
  l = { "<cmd>ObsidianLink<cr>", "Link note" },
  L = { "<cmd>ObsidianLinkNew<cr>", "Create a new note and link it" },
}
lvim.builtin.nvimtree.setup.filters.custom = { '.DS_Store' }

vim.list_extend(lvim.lsp.automatic_configuration.skipped_servers, { "intelephense", "cucumber_language_server" })
lvim.lsp.automatic_configuration.skipped_servers = vim.tbl_filter(function(server)
  return server ~= "phpactor"
end, lvim.lsp.automatic_configuration.skipped_servers)

local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "phpcsfixer", filetypes = { "php" } },
  { command = "yamlfmt",    filetypes = { "yaml" } },
}

require("dap.ext.vscode").load_launchjs()
local dap = require("dap")
dap.adapters.php = {
  type = "executable",
  command = "php-debug-adapter",
  args = {}
}

lvim.plugins = {
  {
    "zbirenbaum/copilot-cmp",
    event = "InsertEnter",
    dependencies = { "zbirenbaum/copilot.lua" },
    config = function()
      vim.defer_fn(function()
        require("copilot").setup()
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
    "karb94/neoscroll.nvim",
    event = "WinScrolled",
    config = function()
      require('neoscroll').setup({
        mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-f>',
          '<C-y>', '<C-e>', 'zt', 'zz', 'zb' },
        hide_cursor = true,
        stop_eof = true,
        use_local_scrolloff = false,
        respect_scrolloff = false,
        cursor_scrolls_alone = true,
        easing_function = nil,
        pre_hook = nil,
        post_hook = nil,
      })
    end
  },
  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },
  {
    "epwalsh/obsidian.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      dir = "/Users/Shared/obsidian",
      completion = {
        nvim_cmp = true,
        min_chars = 2,
      },
      mappings = {},
      note_id_func = function(title)
        local suffix = ""
        if title ~= nil then
          suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()
        else
          for _ = 1, 4 do
            suffix = suffix .. string.char(math.random(65, 90))
          end
        end
        return tostring(os.time()) .. "-" .. suffix
      end,
    },
  }
}

function Open_note()
  local input = vim.fn.input('name: ')
  vim.cmd('ObsidianOpen ' .. input)
end

function New_note()
  local input = vim.fn.input('name: ')
  vim.cmd('ObsidianNew ' .. input)
end
