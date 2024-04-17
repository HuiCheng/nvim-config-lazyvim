return {
    {
        "voldikss/vim-translator",
        init = function()
            vim.keymap.set("n", "<space>tew", ":TranslateW<CR>", { desc = "Translate curr cursor word" })
            vim.keymap.set("v", "<space>tew", ":TranslateW<CR>", { desc = "Translate curr selected words" })
            vim.keymap.set("n", "<space>tex", ":TranslateX<CR>", { desc = "Translate the text in the clipboard" })
        end,
    },
}
