return {
  "is0n/jaq-nvim",
  opts = {

    cmds = {
      default = "term",
      -- Uses vim commands
      internal = {
        lua = "luafile %",
        vim = "source %",
      },

      -- Uses shell commands
      external = {
        typescript = "node run --hot %",
        javascript = "node %",
        java = "java %",
        markdown = "glow %",
        python = "python %",
        rust = "rustc % -o $fileBase.out && ./$fileBase.out && rm $fileBase.out",
        -- rust = "cargo run",
        cpp = "g++ % -o $fileBase.out -std=c++23 && ./$fileBase.out ",
        c = "gcc -Wall -Wextra -pedantic -g % -o $fileBase.out && ./$fileBase.out ",
        go = "go run %",
        sh = "chmod +x % && sh %",
        zsh = "zsh %",
        lua = "lua %",
      },
    },

    behavior = {
      -- Default type
      default = "float",

      -- Start in insert mode
      startinsert = false,

      -- Use `wincmd p` on startup
      wincmd = false,

      -- Auto-save files
      autosave = false,
    },

    ui = {
      float = {
        -- See ':h nvim_open_win'
        border = "none",

        -- See ':h winhl'
        winhl = "Normal",
        borderhl = "FloatBorder",

        -- See ':h winblend'
        winblend = 0,

        -- Num from `0-1` for measurements
        height = 0.8,
        width = 0.8,
        x = 0.5,
        y = 0.5,
      },

      terminal = {
        -- Window position
        position = "bot",

        -- Window size
        size = 10,

        -- Disable line numbers
        line_no = false,
      },

      quickfix = {
        -- Window position
        position = "bot",

        -- Window size
        size = 10,
      },
    },
  },
  -- Keymap for running the file
  vim.keymap.set("n", "<Leader>rj", "<Cmd>Jaq<CR>", { silent = true, desc = "Run the File" }),
}
