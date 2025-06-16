vim.api.nvim_create_user_command("Run", function()
  local ft = vim.bo.filetype
  local output

  if ft == "c" or ft == "cpp" then
    output = "./" .. vim.fn.expand("%:t:r")
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

  if ft == "rust" then
    vim.cmd("split | terminal " .. output)
  else
    if vim.fn.executable(output) == 0 and not output:match("^python3") and not output:match("^node") then
      print("Executable not found: " .. output .. ". Did you run :make?")
      return
    end
    vim.cmd("split | terminal " .. output)
  end
end, {})
