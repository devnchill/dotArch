local M = {}

-- Substitute file-related patterns
function M.substitute(cmd)
  cmd = cmd:gsub("%%", vim.fn.expand("%"))
  cmd = cmd:gsub("$fileBase", vim.fn.expand("%:r"))
  cmd = cmd:gsub("$filePath", vim.fn.expand("%:p"))
  cmd = cmd:gsub("$file", vim.fn.expand("%"))
  cmd = cmd:gsub("$dir", vim.fn.expand("%:p:h"))
  cmd = cmd:gsub("#", vim.fn.expand("#"))
  cmd = cmd:gsub("$altFile", vim.fn.expand("#"))
  return cmd
end

function M.run_code()
  local file_extension = vim.fn.expand("%:e")
  local selected_cmd = ""
  local term_cmd = "bot 10 new | term "

  local supported_filetypes = {
    c = {
      default = "gcc % -o $fileBase %extra && $fileBase",
      debug = "gcc -g % -o $fileBase %extra && $fileBase",
    },
    cpp = {
      debug = "g++ -g % -o $fileBase %extra",
      default = "g++ % -o $fileBase %extra && $fileBase",
      competitive = "g++ -std=c++17 -Wall -DAL -O2 % -o $fileBase %extra && $fileBase",
    },
    cs = { default = "dotnet run" },
    go = { default = "go run %" },
    html = { default = "firefox $filePath" },
    java = { default = "java %" },
    jl = { default = "julia %" },
    js = { default = "node %", debug = "node --inspect %" },
    lua = { default = "lua %" },
    php = { default = "php %" },
    pl = { default = "perl %" },
    py = { default = "python3 %" },
    r = { default = "Rscript %" },
    rb = { default = "ruby %" },
    rs = { default = "rustc % %extra && $fileBase" },
    ts = { default = "tsx %" },
  }

  if supported_filetypes[file_extension] then
    local choices = vim.tbl_keys(supported_filetypes[file_extension])

    local function run_with_args(cmd_template)
      vim.ui.input({ prompt = "Extra compile args (optional): " }, function(extra_args)
        extra_args = extra_args or ""
        -- Insert extra args before filename substitution
        local cmd_with_extra = cmd_template:gsub("%%extra", extra_args)
        local final_cmd = M.substitute(cmd_with_extra)
        vim.cmd(term_cmd .. final_cmd)
      end)
    end

    if #choices == 1 then
      selected_cmd = supported_filetypes[file_extension][choices[1]]
      run_with_args(selected_cmd)
    else
      vim.ui.select(choices, { prompt = "Choose a command:" }, function(choice)
        if choice then
          selected_cmd = supported_filetypes[file_extension][choice]
          run_with_args(selected_cmd)
        end
      end)
    end
  else
    vim.notify("The filetype isn't included in the list", vim.log.levels.WARN, { title = "Code Runner" })
  end
end

return M
