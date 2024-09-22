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
        tiebreak = function(entry1, entry2, prompt)
          local start_pos1, _ = entry1.ordinal:find(prompt)
          if start_pos1 then
            local start_pos2, _ = entry2.ordinal:find(prompt)
            if start_pos2 then
              return start_pos1 < start_pos2
            end
          end
          return false
        end,
        additional_args = { "--ignore-case", "--pcre2" },
      },
    },
  },
}
