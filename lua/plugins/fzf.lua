return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    winopts = {
      preview = {
        horizontal = "right:55%",
      },
    },
    grep = {
      no_header = true,
    },
    files = {
      no_header = true,
    },
  },
}
