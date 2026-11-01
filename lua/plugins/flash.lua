return {
  "folke/flash.nvim",
  opts = {
    modes = {
      -- f / F / t / T / ; ,
      char = {
        -- no dimming of the rest of the text
        highlight = { backdrop = false },
        -- set to false to turn off flash for f/t entirely and use plain Vim behaviour
        -- enabled = false,
      },
    },
  },
  init = function()
    -- subtle underline instead of the loud match colours; re-applied after colorscheme changes
    local function set_hl()
      vim.api.nvim_set_hl(0, "FlashMatch", { underline = true, bold = true })
      vim.api.nvim_set_hl(0, "FlashCurrent", { underline = true, bold = true })
    end
    set_hl()
    vim.api.nvim_create_autocmd("ColorScheme", { callback = set_hl })
  end,
}
