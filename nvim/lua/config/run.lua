vim.api.nvim_create_user_command("Run", function()
  local ft = vim.bo.filetype
  local output

  -- Always run :make
  vim.cmd("make")

  if ft == "c" or ft == "cpp" then
    local bin = "/tmp/a.out"
    vim.fn.system({ "mv", "a.out", bin }) -- move every time
    output = bin
  elseif ft == "go" then
    output = "./" .. vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
  elseif ft == "rust" then
    output = "cargo run"
  elseif ft == "javascript" then
    output = "node " .. vim.fn.expand("%")
  elseif ft == "typescript" then
    output = "ts-node " .. vim.fn.expand("%")
  elseif ft == "python" then
    output = "python3 " .. vim.fn.expand("%")
  else
    print("Unsupported filetype: " .. ft)
    return
  end

  -- Run the program
  if ft == "rust" then
    vim.cmd("split | terminal " .. output)
  else
    if vim.fn.executable(output) == 0 and not output:match("^python3") and not output:match("^node") then
      print("Executable not found: " .. output)
      return
    end
    vim.cmd("split | terminal " .. output)
  end
end, {})
