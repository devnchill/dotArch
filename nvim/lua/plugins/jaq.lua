return {
  "is0n/jaq-nvim",
  opts = {
    ui = {
      float = {
        border = "rounded",
      },
    },
    cmds = {
      default = "term",
      external = {
        python = "python3 %",
        javascript = "node %",
        typescript = "tsx %",
        go = "go run %",
        cpp = "g++ % -o $fileBase.out -std=c++23 && ./$fileBase.out",
        c = "gcc -Wall -Wextra -pedantic -g % -o $fileBase && ./$fileBase",
      },
    },
  },
  -- Keymap for running the file
  vim.keymap.set("n", "<Leader>rj", "<Cmd>Jaq<CR>", { silent = true, desc = "Run the File" }),
}
