return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.sections.lualine_z = {}
      opts.options.section_separators = ""
      opts.options.component_separators = ""
    end,
  },
}
