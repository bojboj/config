return {
  "hrsh7th/nvim-cmp",
  version = "*",
  dependencies = {
    { "hrsh7th/cmp-buffer",  version = "*" },
    { "hrsh7th/cmp-path",    version = "*" },
    { "hrsh7th/cmp-cmdline", version = "*" },
  },
  config = function()
    local cmp = require "cmp"

    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      sources = cmp.config.sources({
        { name = "buffer" },
      })
    })

    cmp.setup.cmdline(
      { "/", "?" },
      {
        mapping = cmp.mapping.preset.cmdline(),
        sources = { { name = "buffer" } }
      }
    )

    cmp.setup.cmdline(
      ":",
      {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources(
          { { name = "path" } },
          { { name = "cmdline" } }
        ),
        matching = { disallow_symbol_nonprefix_matching = false }
      }
    )
  end
}
