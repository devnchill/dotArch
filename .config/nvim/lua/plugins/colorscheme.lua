return {
  {
    "neanias/everforest-nvim",
    config = function()
      require("everforest").setup({
        italics = true,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}
