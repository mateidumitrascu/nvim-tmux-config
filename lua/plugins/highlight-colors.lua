return {
  "brenoprata10/nvim-highlight-colors",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    render = "virtual", -- show a swatch next to the color (like VSCode)
    enable_named_colors = true, -- e.g. "red", "blue"
    enable_tailwind = true,
  },
}
