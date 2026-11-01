return {

  {
    "folke/tokyonight.nvim",
    lazy = true,
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl, c)
        -- soft blue flash label (f/t targets) instead of the default magenta
        hl.FlashLabel = { bg = c.blue0, fg = c.fg, bold = true }
      end,
    },
  },
  -- 1. Configure and install Kanagawa
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    opts = {
      transparent = true,
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = "none",
            },
          },
        },
      },
      overrides = function(colors)
        local theme = colors.theme

        -- To view the palette colors:
        -- :=require("kanagawa.colors").setup().palette
        local text_color = colors.palette.dragonWhite
        return {
          Normal = { fg = text_color },
          Identifier = { fg = text_color },
          ["@variable"] = { fg = text_color },
          ["@variable.builtin"] = { fg = text_color },
          ["@variable.parameter"] = { fg = text_color },
          -- ["@variable.member"] = { fg = text_color },
          ["@property"] = { fg = text_color },

          -- Constants
          ["@constant"] = { fg = colors.palette.oniViolet },
          ["@constant.builtin"] = { fg = colors.palette.oniViolet },

          -- Transparent floating windows
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },

          -- Transparent file explorer / sidebars (Neo-tree, NvimTree, etc.)
          NvimTreeNormal = { bg = "none" },
          NvimTreeNormalNC = { bg = "none" },
          NeoTreeNormal = { bg = "none" },
          NeoTreeNormalNC = { bg = "none" },

          --Regular file names
          NeoTreeFileName = { fg = text_color },
          NvimTreeFileName = { fg = text_color },

          -- Custom Flash label highlight
          FlashLabel = { bg = colors.palette.crystalBlue, fg = theme.ui.fg, bold = true },
        }
      end,
    },
  },

  --Theprimeagen's theme
  {
    "rose-pine/neovim",
    name = "rose-pine",
    lazy = false,
    priority = 1000,
    opts = {
      styles = {
        bold = true,
        italic = false,
        transparency = true,
      },
      highlight_groups = {
        NormalFloat = { bg = "NONE" },
        FloatBorder = { bg = "NONE" },
        FloatTitle = { bg = "NONE" },
        NeoTreeNormal = { bg = "NONE" },
        NeoTreeNormalNC = { bg = "NONE" },
        FlashLabel = { bg = "#9ccfd8", fg = "#e0def4", bold = true },
      },
    },
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      transparent_background = true, -- Makes the main editor background transparent

      -- Keep floating windows and file explorer transparent
      custom_highlights = function(colors)
        return {
          NormalFloat = { bg = "NONE" },
          FloatBorder = { bg = "NONE" },
          FloatTitle = { bg = "NONE" },
          NeoTreeNormal = { bg = "NONE" },
          NeoTreeNormalNC = { bg = "NONE" },

          -- Custom Flash label matching Catppuccin's palette (e.g., blue)
          FlashLabel = { bg = colors.blue, fg = colors.base, bold = true },
        }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine-moon",
    },
  },
}

-- return {
--   {
--     "folke/tokyonight.nvim",
--     lazy = true,
--     opts = {
--       transparent = true,
--       styles = {
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--       on_highlights = function(hl, c)
--         -- soft blue flash label (f/t targets) instead of the default magenta
--         hl.FlashLabel = { bg = c.blue0, fg = c.fg, bold = true }
--       end,
--     },
--   },
-- }
