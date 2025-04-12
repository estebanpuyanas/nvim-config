-- ~/.config/nvim/lua/config/lsp.lua

-- Setup Mason
require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "pyright", "clangd", "jdtls" }, -- Add LSPs here
})

-- Setup nvim-cmp
local cmp = require("cmp")
cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<Tab>"] = cmp.mapping.select_next_item(),
    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "buffer" },
  },
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
})

-- Setup LSPs
local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- Example: Python
lspconfig.pyright.setup({ capabilities = capabilities })

-- Example: C++
lspconfig.clangd.setup({ capabilities = capabilities })

-- Example: Java
lspconfig.jdtls.setup({ capabilities = capabilities })

