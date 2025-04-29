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
      styles = {
        comments = {},
        conditionals = {},
        loops = {},
        functions = { "bold" },
        keywords = { "italic" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = { "italic" },
        properties = {},
        types = { "underline" },
      },
      highlight_overrides = {
        mocha = function(colors)
          return {
            WinSeparator = { fg = colors.overlay2, bg = "#000000" },
            FloatBorder = { fg = colors.overlay2, bg = "#000000" },
            NormalFloat = { bg = "#000000" },
            PmenuSel = { bg = "#3FCF8E", fg = colors.crust },
          }
        end,
      },
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
