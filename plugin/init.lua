local width = 50
local height = 1
local window_width = (vim.api.nvim_win_get_width(0) / 2) - (width / 2)
local window_height = (vim.api.nvim_win_get_height(0) / 2) - (height / 2)
local opts = {
    relative="win",
    row = window_height,
    col = window_width,
    width = width,
    height = height,
    border = "rounded",
    style = "minimal",
    title = "PHP Artisan",
    title_pos = "center",
}

local buf = vim.api.nvim_create_buf(false, true)

vim.api.nvim_buf_set_keymap(buf, "n", "<Esc>", ":close<cr>", {silent = true, nowait = true, noremap = true})
vim.api.nvim_input("i")
vim.api.nvim_open_win(buf, true, opts)
