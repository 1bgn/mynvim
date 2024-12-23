return {
  {
    "CRAG666/code_runner.nvim",
    config = true,

    opts = function(plugin, opts)
      vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false })
      vim.keymap.set("n", "jk", ":FlutterRestart<CR>", { noremap = true, silent = false })
    end,
  },
  {
    "CRAG666/code_runner.nvim",

    opts = {
      filetype = {
        rust = {
          "cargo watch -x run",
        },
        dart = {
          ":FlutterRestart",
        },
      },
    },
  },
}
