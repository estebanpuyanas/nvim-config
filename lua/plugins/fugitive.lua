return {
  {
    "tpope/vim-fugitive",
    cmd = { "Git", "G" }, -- Lazy-load on :Git or :G
    keys = {
      { "<leader>gs", "<cmd>Git<CR>", desc = "Git status (Fugitive)" },
      { "<leader>gc", "<cmd>Git commit<CR>", desc = "Git commit" },
      { "<leader>gp", "<cmd>Git push<CR>", desc = "Git push" },
    },
  }
}

