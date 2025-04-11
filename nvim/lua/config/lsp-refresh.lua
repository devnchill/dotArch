local M = {}

M.refresh = function()
  -- Stop all LSP clients
  vim.lsp.stop_client(vim.lsp.get_clients(), true)

  -- Defer to ensure buffer reload happens after LSP stops
  vim.defer_fn(function()
    -- Reload all buffers
    vim.cmd("bufdo e")
  end, 100)
end

return M
