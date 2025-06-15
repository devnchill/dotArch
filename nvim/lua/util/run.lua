local M = {}

function M.Run()
  -- Close bottom terminal if any
  local bottom_win = nil
  local max_row = -1
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local row = vim.fn.win_screenpos(win)[1]
    if row > max_row then
      max_row = row
      bottom_win = win
    end
  end

  if bottom_win then
    local buf = vim.api.nvim_win_get_buf(bottom_win)
    if vim.bo[buf].buftype == "terminal" then
      vim.api.nvim_win_close(bottom_win, true)
    end
  end

  -- Run current file binary
  local file = vim.fn.expand("%:r")
  vim.cmd("botright split | resize 12")
  vim.cmd("term ./" .. file)
end

return M
