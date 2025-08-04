return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = "base16",
      },
      sections = {
        lualine_a = {
          {
            "buffers",
          },
        },
      },
    })
  end,
}
