vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
vim.api.nvim_create_autocmd({ "BufEnter" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
require("lint").linters_by_ft = {
    python = {"pylint",}
}
require("todo-comments").setup {
-- your configuration comes here
-- or leave it empty to use the default settings
-- refer to the configuration section below
}
require("refactoring").setup({
    -- Remaps for the refactoring operations currently offered by the plugin
    vim.api.nvim_set_keymap(
        "v",
        "<leader>re",
        [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function')<CR>]],
        {noremap = true, silent = true, expr = false}
    ),
    vim.api.nvim_set_keymap(
        "v",
        "<leader>rf",
        [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Function To File')<CR>]],
        {noremap = true, silent = true, expr = false}
    ),
    vim.api.nvim_set_keymap(
        "v",
        "<leader>rv",
        [[ <Esc><Cmd>lua require('refactoring').refactor('Extract Variable')<CR>]],
        {noremap = true, silent = true, expr = false}
    ),
    vim.api.nvim_set_keymap(
        "v",
        "<leader>ri",
        [[ <Esc><Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
        {noremap = true, silent = true, expr = false}
    ),

    -- Extract block doesn't need visual mode
    vim.api.nvim_set_keymap(
        "n",
        "<leader>rb",
        [[ <Cmd>lua require('refactoring').refactor('Extract Block')<CR>]],
        {noremap = true, silent = true, expr = false}
    ),
    vim.api.nvim_set_keymap(
        "n",
        "<leader>rbf",
        [[ <Cmd>lua require('refactoring').refactor('Extract Block To File')<CR>]],
        {noremap = true, silent = true, expr = false}
    ),

    -- Inline variable can also pick up the identifier currently under the cursor without visual mode
    vim.api.nvim_set_keymap(
        "n",
        "<leader>ri",
        [[ <Cmd>lua require('refactoring').refactor('Inline Variable')<CR>]],
        {noremap = true, silent = true, expr = false}
    )
})

vim.api.nvim_create_autocmd({ "Filetype" }, {
  pattern = { "c" },
  command = "setlocal shiftwidth=2 tabstop=2 softtabstop=2"
})

