local custom_highlight = vim.api.nvim_create_augroup("CustomHighlight", {})

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "nightfly",

  callback = function()
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#081e2f" })
    vim.api.nvim_set_hl(0, "LazyNormal", { bg = "NONE" })
    vim.api.nvim_set_hl(0, "FloatBorder", { fg = "#ffffff" })

    -- lsp
    vim.api.nvim_set_hl(0, "LspSignatureActiveParameter", { bg = "#4b6479" })

    -- notify
    vim.api.nvim_set_hl(0, "NotifyBackground", { bg = "#000000" })

    -- neotree
    vim.api.nvim_set_hl(0, "NeoTreeDotfile", { fg = "#38507a" })
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
