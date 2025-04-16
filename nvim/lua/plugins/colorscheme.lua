return {
  {
    "catppuccin/nvim",
    priority = "1000",
    opts = {
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
      highlight_overrides = {
        mocha = function(colors)
          return {
            WinSeparator = { fg = colors.overlay2, bg = "#000000" },
            FloatBorder = { fg = colors.overlay2, bg = "#000000" },
            NormalFloat = { bg = "#000000" },
          }
        end,
      },
      styles = {},
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        require("catppuccin").load()
      end,
    },
  },
}
