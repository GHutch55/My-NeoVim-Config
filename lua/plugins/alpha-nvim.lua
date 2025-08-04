return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = {
    "nhattVim/alpha-ascii.nvim",
    opts = { header = "gengar",
      user_path = vim.fn.expand("~/.config/nvim/ascii")
    },
  },
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.buttons.val = {
      dashboard.button("SPC f f", "󰱼  Find File  ", ":Telescope find_files<CR>"),
      dashboard.button("SPC f g", "  Live Grep  ", ":Telescope live_grep<CR>"),
      dashboard.button("SPC e", "  Open Filetree", ":Neotree filesystem reveal right toggle<CR>"),
    }

    vim.api.nvim_create_autocmd("User", {
      once = true,
      pattern = "LazyVimStarted",
      callback = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = {
          " ",
          " Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins  in " .. ms .. " ms ",
        }
        pcall(vim.cmd.AlphaRedraw)
      end,
    })

    alpha.setup(dashboard.opts)
  end,
}
