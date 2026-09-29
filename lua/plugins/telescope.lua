return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local show_hidden = false

    local function toggle_hidden()
      show_hidden = not show_hidden
      require("telescope.builtin").find_files({
        hidden = show_hidden,
        no_ignore = show_hidden,
      })
    end

    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      initial_mode = "normal",
      file_ignore_patterns = {
        "node_modules/",
        "%.git/",
        "dist/",
        "build/",
        "%.next/",
        "vendor/",
      },
      mappings = {
        i = { ["<A-h>"] = toggle_hidden },
        n = { ["<A-h>"] = toggle_hidden },
      },
    })

    opts.pickers = vim.tbl_deep_extend("force", opts.pickers or {}, {
      find_files = { initial_mode = "normal" },
      oldfiles = { initial_mode = "normal" },
      buffers = { initial_mode = "normal" },
    })

    return opts
  end,
}
