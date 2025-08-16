return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- for icons
    config = function()
      require("lualine").setup {
        options = {
          theme = "onedark",
          icons_enabled = true,
          section_separators = { left = "", right = "" },
          component_separators = { left = "", right = "" },
        },
        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff" },
          lualine_c = {
            {
              "filename",
              path = 1, -- relative path
              symbols = {
                modified = " [M]",     -- like VS Code: modified
                readonly = " []",
                unnamed = "[No Name]",
                newfile = " [U]",      -- VS Code-style untracked
              },
            },
            {
              "diagnostics",
              sources = { "nvim_diagnostic" },
              sections = { "error", "warn", "hint", "info" },
              symbols = {
                error = " ",
                warn  = " ",
                hint  = " ",
                info  = " ",
              },
              colored = true,
              update_in_insert = false,
              always_visible = false,
            },
          },
          lualine_x = { "encoding", "filetype" }, -- removed fileformat to kill "Bot"
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
        extensions = { "nvim-tree", "fugitive" },
      }
    end
  }
}
