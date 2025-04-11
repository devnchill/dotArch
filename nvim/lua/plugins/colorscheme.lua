return {
  {
    "catppuccin/nvim",
    priority = "1000",
    opts = {
      no_italics = false,
      no_bold = false,
      no_underline = false,
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
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = { "italic" },
        functions = { "bold" },
        keywords = { "italic" },
        strings = {},
        variables = {},
        numbers = { "bold" },
        booleans = { "bold", "italic" },
        properties = {},
        types = { "italic" },
        operators = {},
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
