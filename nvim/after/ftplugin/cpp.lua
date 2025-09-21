-- buffer-local compile command
vim.opt_local.makeprg = "g++ -g -std=c++17 -o target %"

-- function to compile and run
local function compile_and_run()
  -- run :make silently
  vim.cmd("silent make")

  -- check if there are errors in quickfix
  local qflist = vim.fn.getqflist()
  if not vim.tbl_isempty(qflist) then
    -- open quickfix if there are errors
    vim.cmd("copen")
  else
    -- no errors → run binary in vertical terminal split
    vim.cmd("vsplit")
    vim.cmd("terminal ./target")
  end
end

-- autocmd to trigger on saving C++ files
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = "*.cpp",
  callback = compile_and_run,
})
