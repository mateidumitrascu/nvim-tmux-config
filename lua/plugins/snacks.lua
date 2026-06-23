return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true, -- show dotfiles
          ignored = true, -- show gitignored files
        },
        buffers = {
          -- open in normal mode instead of insert
          on_show = function()
            vim.schedule(function()
              vim.cmd.stopinsert()
            end)
          end,
        },
      },
    },
  },
}
