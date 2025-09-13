-- ~/.config/nvim/lua/plugins/treesitter.lua

return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = { "java", "cpp", "python", "elixir", "dockerfile",
                            "html", "lua", "sql", "ocaml", "tsx" , "typescript",
                            "javascript", "css", "json", "markdown",},
        highlight = { enable = true },
        indent = { enable = true },
      }
    end,
  },
  {
    "HiPhish/rainbow-delimiters.nvim",
    config = function()
      -- Optional: configure if needed, or leave it empty for defaults
      local rainbow_delimiters = require("rainbow-delimiters")

      vim.g.rainbow_delimiters = {
        strategy = {
          [''] = rainbow_delimiters.strategy['global'],
          lua = rainbow_delimiters.strategy['local'],
        },
        query = {
          [''] = 'rainbow-delimiters',
          html = 'rainbow-tags',
          javascript = 'rainbow-delimiters-react',
        },
        highlight = {
          'RainbowDelimiterRed',
          'RainbowDelimiterYellow',
          'RainbowDelimiterBlue',
          'RainbowDelimiterOrange',
          'RainbowDelimiterGreen',
          'RainbowDelimiterViolet',
          'RainbowDelimiterCyan',
        },
      }
    end
  }
}


