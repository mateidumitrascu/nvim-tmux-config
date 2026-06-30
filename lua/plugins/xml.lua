return {
  -- Treat .fxml (JavaFX) and friends as XML
  {
    "neovim/nvim-lspconfig",
    init = function()
      vim.filetype.add({
        extension = {
          fxml = "xml",
        },
      })
    end,
    opts = {
      servers = {
        -- XML language server (Java-based; uses your JDK)
        lemminx = {},
      },
    },
  },

  -- Syntax highlighting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, { "xml" })
    end,
  },
}
