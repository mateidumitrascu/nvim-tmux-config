return {
  "akinsho/bufferline.nvim",
  opts = function(_, opts)
    local groups = require("bufferline.groups")
    opts.options = opts.options or {}
    opts.options.groups = {
      items = {
        groups.builtin.pinned:with({ icon = "✦" }),
      },
    }
    return opts
  end,
}
