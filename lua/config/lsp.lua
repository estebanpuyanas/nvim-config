-- ~/.config/nvim/lua/config/lsp.lua

-- Mason
require("mason").setup()

-- Mason LSPConfig
require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "clangd", "jdtls", 
                        "dockerls", "docker_compose_language_service",
                        "elixirls", "html"},
  handlers = {
    function(server_name)
      require("lspconfig")[server_name].setup({
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      })
    end,
  },
})

-- Autocompletion setup (cmp)
local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
  snippet = {
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(), -- Manual trigger
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "path" },
  },
})


