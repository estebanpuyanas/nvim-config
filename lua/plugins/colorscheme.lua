-- ~/.config/nvim/lua/plugins/colorscheme.lua

return {
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
      require("onedark").setup {
        style = "deep", -- or "dark", "cool", "warm", etc.
      }
      require("onedark").load()
    end,
  }
}


