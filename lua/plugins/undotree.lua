return {
  {
    "mbbill/undotree",
    cmd = "UndotreeToggle",  -- lazy load on command
    keys = {
      { "<leader>u", "<cmd>UndotreeToggle<CR>", desc = "Toggle Undotree" }
    },
    config = function()
      -- Optional settings (you can omit this if you like defaults)
      vim.g.undotree_WindowLayout = 2           -- horizontal split
      vim.g.undotree_SetFocusWhenToggle = 1     -- focus the undotree window when toggled
      vim.g.undotree_SplitWidth = 40            -- width of tree pane
      vim.g.undotree_DiffAutoOpen = 1           -- show diff automatically
    end
  }
}

