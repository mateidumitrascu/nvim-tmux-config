return {
  "karb94/neoscroll.nvim",
  event = "VeryLazy",
  opts = {
    -- which mappings get the smooth animation
    mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "<C-y>", "<C-e>", "zt", "zz", "zb" },
    easing_function = "sine", -- quadratic | cubic | quartic | quintic | circular | sine
  },
}
