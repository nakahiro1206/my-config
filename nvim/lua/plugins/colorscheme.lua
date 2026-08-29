return {
  -- lazy.nvim
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "latte",
      background = { light = "latte" },
      color_overrides = {
        latte = {
          base = "#ffffff", -- pure white bg instead of #eff1f5
          mantle = "#ffffff", -- for sidebars/floats, slightly off-white
          crust = "#ffffff",
          text = "#1a1a1a", -- darker foreground = higher contrast
          subtext1 = "#3a3a3a",
          subtext0 = "#4a4a4a",
        },
      },
      styles = {
        comments = { "italic" },
        keywords = { "bold" }, -- adds a bit more visual weight/contrast
      },
      integrations = {
        treesitter = true,
        native_lsp = { enabled = true },
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
    custom_highlights = function(colors)
      return {
        -- ...your Snacks / NormalFloat overrides from before...

        -- text selection (visual mode)
        Visual = { bg = colors.surface0, fg = "NONE" }, -- lighter than surface1/2
        VisualNOS = { bg = colors.surface0, fg = "NONE" },

        -- cursor itself (GUI cursor block, if your terminal renders it)
        Cursor = { bg = colors.rosewater, fg = colors.base },

        -- word-under-cursor highlight (built-in LSP references)
        LspReferenceText = { bg = colors.surface0 },
        LspReferenceRead = { bg = colors.surface0 },
        LspReferenceWrite = { bg = colors.surface0, underline = true },

        -- if you use illuminate.nvim instead of built-in LSP highlight
        IlluminatedWordText = { bg = colors.surface0 },
        IlluminatedWordRead = { bg = colors.surface0 },
        IlluminatedWordWrite = { bg = colors.surface0, underline = true },
      }
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin", -- 应用 catppuccin 颜色方案
    },
  },
}
