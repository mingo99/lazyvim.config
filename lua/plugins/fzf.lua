return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    { "<leader>sB", "<cmd>FzfLua grep_curbuf previewer=false<cr>", desc = "Buffer" },
  },
  opts = {
    winopts = {
      preview = {
        horizontal = "right:55%",
      },
    },
    grep = {
      no_header = true,
      fzf_opts = { ["--history"] = vim.fn.stdpath("data") .. "/fzf-lua-grep-history" },
    },
    files = {
      no_header = true,
      fzf_opts = { ["--history"] = vim.fn.stdpath("data") .. "/fzf-lua-files-history" },
    },
  },
}
