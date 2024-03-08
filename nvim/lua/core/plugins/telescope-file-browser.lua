require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap(
  "n",
  "<leader>eg",
  ":Telescope file_browser<CR>",
  { noremap = true }
)

vim.api.nvim_set_keymap(
  "n",
  "<leader>el",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)
