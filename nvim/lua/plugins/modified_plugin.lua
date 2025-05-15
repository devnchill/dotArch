return {
  {

    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
    },
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "right",
      },
    },
  },
  {
    {
      "saghen/blink.cmp",
      opts = {
        completion = {
          menu = {
            border = "rounded",
          },
          documentation = {
            window = {
              border = "rounded",
            },
          },
        },
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    opts = function(_, opts)
      local dap = require("dap")
      if dap.configurations.typescript then
        local new_configs = {}
        for _, config in ipairs(dap.configurations.typescript) do
          local new_config = vim.tbl_deep_extend("force", {}, config)
          new_config.runtimeExecutable = "tsx"
          table.insert(new_configs, new_config)
        end
        dap.configurations.typescript = new_configs
      end
    end,
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("bufferline").setup({
        highlights = {
          fill = {
            bg = "#000000", -- proper hex format
          },
          background = {
            bg = "#000000", -- proper hex format
          },
          tab = {
            bg = "#000000", -- proper hex format
          },
          tab_selected = {
            bg = "#000000",
          },
          tab_separator_selected = {
            bg = "#000000",
          },
          tab_close = {
            bg = "#000000",
          },
          close_button = {
            bg = "#000000",
          },
          close_button_visible = {
            bg = "#000000",
          },
          close_button_selected = {
            bg = "#000000",
          },
        },
      })
    end,
  },
}
