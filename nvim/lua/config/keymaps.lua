-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local term = require("config.terminal")
local opts = { silent = true }
local keymap = vim.keymap.set
local function opt(desc, others)
  return vim.tbl_extend("force", opts, { desc = desc }, others or {})
end

keymap("t", "<C-q>", [[<C-\><C-n>]], opt("Escape in terminal window"))
keymap({ "n", "t" }, "<A-t>", function()
  term:new({ execn = "zsh", name = "Shell" }):toggle()
end, opt("Open Shell"))
keymap({ "n", "t" }, "<A-b>", function()
  term:new({ execn = "btop", name = "Btop" }):toggle()
end, opt("Open Btop"))
keymap({ "n", "t" }, "<A-e>", function()
  term:new({ execn = "yazi", name = "yazi" }):toggle()
end, opt("Open Yazi"))
keymap("n", "<Leader>tT", "<Cmd>terminal<CR>", opt("Neoterminal"))
keymap({ "n", "t" }, "<A-d>", function()
  term:new({ name = "webpackBuild" }):run("npm run build")
end)
keymap({ "n", "t" }, "<A-s>", function()
  term:new({ name = "webpackLive" }):run("npm run dev")
end)

keymap({ "n", "t" }, "<C-n>", function()
  term:new({ execn = "node", name = "NodeREPL" }):toggle()
end, opt("Toggle Node.js REPL"))

keymap({ "n", "t" }, "<C-p>", function()
  term:new({ execn = "python", name = "PythonREPL" }):toggle()
end, opt("Toggle Python REPL"))

keymap({ "n", "i" }, "<C-\\>", function()
  vim.cmd("w")
  vim.cmd("Run")
end, opt("Save and Run"))

keymap({ "n", "t" }, "<A-g>", function()
  term:new({ execn = "psql", name = "PostgresREPL" }):toggle()
end, opt("Toggle PSQL REPL"))
