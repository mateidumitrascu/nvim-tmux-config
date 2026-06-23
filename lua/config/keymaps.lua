-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
---@diagnostic disable: undefined-global
-- Toggle diagnostics virtual text
vim.keymap.set("n", "<leader>he", function()
  local virtual_text = vim.diagnostic.config().virtual_text
  vim.diagnostic.config({ virtual_text = not virtual_text })
end, { desc = "Toggle Diagnostic Virtual Text" })

vim.keymap.set(
  "n",
  "<leader><leader>",
  "<cmd>Telescope find_files initial_mode=normal<cr>",
  { desc = "Find Files" }
)
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles initial_mode=normal<cr>", { desc = "Recent (Normal)" })
