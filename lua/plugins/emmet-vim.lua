vim.keymap.set(
  "i",
  ",,",
  '<c-r>=emmet#util#closePopup()<cr><c-r>=emmet#expandAbbr(0,"")<cr>',
  { noremap = true, desc = "expand emmet" }
)

return {
  "mattn/emmet-vim",
}
