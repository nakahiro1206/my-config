return {
  "zbirenbaum/copilot.lua",
  opts = {
    suggestion = {
      enabled = true,
      auto_trigger = true, -- show ghost text as you type, no manual trigger needed
      debounce = 75,
      keymap = {
        accept = "<Tab>",
        accept_word = false,
        accept_line = false,
        next = "<M-]>",
        prev = "<M-[>",
        dismiss = "<C-]>",
      },
    },
    panel = {
      enabled = false, -- disable the separate suggestion panel if you only want inline
    },
    filetypes = {
      markdown = true,
      help = false,
      gitcommit = true,
      ["."] = true, -- fallback: enable for any filetype not listed
    },
  },
}
