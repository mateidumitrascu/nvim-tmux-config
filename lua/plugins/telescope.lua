return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      initial_mode = "normal",
      file_ignore_patterns = {
        "node_modules/",
        "%.git/",
        "dist/",
        "build/",
        "%.next/",
        "vendor/",
      },
    },
    pickers = {
      find_files = {
        initial_mode = "normal",
      },
      oldfiles = {
        initial_mode = "normal",
      },
      buffers = {
        initial_mode = "normal",
      },
    },
  },
}
