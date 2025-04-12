return {
  -- LSP Support
  { "neovim/nvim-lspconfig" }, -- Core LSP setup
  { "williamboman/mason.nvim", build = ":MasonUpdate" }, -- LSP installer UI
  { "williamboman/mason-lspconfig.nvim" }, -- Bridges Mason + lspconfig

  -- Autocompletion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" }, -- LSP source for nvim-cmp
  { "hrsh7th/cmp-buffer" },   -- buffer completions
  { "hrsh7th/cmp-path" },     -- path completions
  { "saadparwaiz1/cmp_luasnip" }, -- snippets
  { "L3MON4D3/LuaSnip" },     -- snippet engine
}

