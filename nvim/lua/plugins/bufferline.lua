return {
  "akinsho/bufferline.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("bufferline").setup({
      highlights = {
        fill = {
          bg = "#000000", -- proper hex format
          fg = "#888888",
        },
        background = {
          bg = "#000000", -- proper hex format
          fg = "#888888",
        },
      },
    })
  end,
}
