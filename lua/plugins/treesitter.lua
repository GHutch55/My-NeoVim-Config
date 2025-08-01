return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { "java", "javascript", "go", "typescript", "lua", "python" },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}
