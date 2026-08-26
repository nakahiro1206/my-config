return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    image = {
      enabled = true,
      doc = {
        enabled = true,
        inline = false, -- Render in float window
        float = true,
        max_width = 60,
        max_height = 30,
      },
      formats = { "png", "jpg", "jpeg", "gif", "webp", "pdf", "mp4" },
    },
  },
}
