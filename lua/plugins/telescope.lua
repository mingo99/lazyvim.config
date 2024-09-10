return {
  "nvim-telescope/telescope.nvim",
  opts = {
    pickers = {
      current_buffer_fuzzy_find = {
        theme = "dropdown",
        previewer = false,
        -- sorting_strategy = "ascending",
        layout_config = {
          width = 0.8,
          height = 0.9,
        },
      },
    },
  },
}
