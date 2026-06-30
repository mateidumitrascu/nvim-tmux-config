return {
  "folke/noice.nvim",
  opts = {
    lsp = {
      -- stop the "Publish Diagnostics / Validate Documents" spam (jdtls etc.)
      progress = {
        enabled = false,
      },
    },
  },
}
