local custom_highlight = vim.api.nvim_create_augroup("CustomHighlight", {})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "nightfly",

  callback = function()
    local white = "#c3ccdc"

    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "LazyNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#ffffff" })
    vim.api.nvim_set_hl(0, "Visual", { fg = "#38ff9c" })

    -- lsp
    vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { bg = "#4b6479" })

    -- notify
    vim.api.nvim_set_hl(0, "NotifyBackground", { bg = "#000000" })

    -- neotree
    vim.api.nvim_set_hl(0, "NeoTreeDotfile", { fg = "#7c8f8f" })
    vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#e3d18a" })

    -- alpha
    vim.api.nvim_set_hl(0, "AlphaHeader", { fg = "#f78c6c" })
    vim.api.nvim_set_hl(0, "AlphaButtons", { fg = white })
    vim.api.nvim_set_hl(0, "AlphaFooter", { fg = white })
  end,
  group = custom_highlight,
})

vim.g.nightflyTransparent = true

return {
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nightfly",
    },
  },
}
