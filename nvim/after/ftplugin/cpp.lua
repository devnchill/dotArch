vim.api.nvim_buf_set_keymap(0, "n", "<F5>", "", {
  noremap = true,
  silent = true,
  callback = function()
    -- save current file
    vim.cmd("w")

    -- set makeprg for this buffer
    vim.opt_local.makeprg = "g++ -std=c++17 -o target %"

    -- run :make silently
    vim.cmd("silent make")

    -- check quickfix list for errors
    local qflist = vim.fn.getqflist()
    if not vim.tbl_isempty(qflist) then
      -- open quickfix if compilation failed
      vim.cmd("copen")
    else
      -- compilation succeeded, run program in split terminal
      vim.cmd("split | terminal ./target")
    end
  end,
})
