return {
  {
    "okuuva/auto-save.nvim",
    cmd = "ASToggle",
    event = { "InsertLeave", "TextChanged" },
    opts = {
      enabled = false,
      execution_message = {
        enabled = false,
      },
    },
  },
}
