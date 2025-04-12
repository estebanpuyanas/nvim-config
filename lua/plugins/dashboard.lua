return {
  {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- 🎨 ASCII Art Header
      dashboard.section.header.val = {
        "   ███╗   ██╗██╗   ██╗██╗███╗   ███╗",
        "   ████╗  ██║██║   ██║██║████╗ ████║",
        "   ██╔██╗ ██║██║   ██║██║██╔████╔██║",
        "   ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
        "   ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
        "   ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
        "       Welcome to Neovim, Esteban!  ",
      }

      -- 🧭 Buttons with Nerd Font icons
      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find File", ":Telescope find_files<CR>"),
        dashboard.button("r", "󰄉  Recent Files", ":Telescope oldfiles<CR>"),
        dashboard.button("g", "󰊄  Grep Text", ":Telescope live_grep<CR>"),
        dashboard.button("c", "  Edit Config", ":e ~/.config/nvim/init.lua<CR>"),
        dashboard.button("u", "  Update Plugins", ":Lazy sync<CR>"),
        dashboard.button("q", "  Quit", ":qa<CR>"),
      }

      -- Optional: footer message or version
      dashboard.section.footer.val = "  Config powered by Lazy.nvim + Onedark"

      dashboard.opts.opts.noautocmd = true
      alpha.setup(dashboard.config)
    end,
  },
}

