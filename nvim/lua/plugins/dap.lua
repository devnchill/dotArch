return {
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
}
