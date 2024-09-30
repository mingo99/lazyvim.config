local action_layout = require("telescope.actions.layout")
local actions = require("telescope.actions")

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    -- {
    --   "nvim-telescope/telescope-live-grep-args.nvim",
    --   -- This will not install any breaking changes.
    --   -- For major updates, this must be adjusted manually.
    --   version = "^1.0.0",
    -- },
    { "tsakirist/telescope-lazy.nvim" },
  },
  opts = {
    defaults = {
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--trim", -- add this value
      },
      mappings = {
        n = {
          ["<M-p>"] = action_layout.toggle_preview,
        },
        i = {
          ["<C-u>"] = false,
          ["<M-p>"] = action_layout.toggle_preview,
          ["<esc>"] = actions.close,
        },
      },
    },
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
      buffers = {
        mappings = {
          i = {
            ["<c-d>"] = actions.delete_buffer + actions.move_to_top,
          },
        },
      },
      lsp_references = {
        trim_text = true,
      },
    },
  },
}
