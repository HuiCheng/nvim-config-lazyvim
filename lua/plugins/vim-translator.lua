return {
    {
        "voldikss/vim-translator",
        init = function()
            vim.keymap.set("n", "<space>tsw", ":TranslateW<CR>", { desc = "Translate curr cursor word" })
            vim.keymap.set("v", "<space>tsw", ":TranslateW<CR>", { desc = "Translate curr selected words" })
            vim.keymap.set("n", "<space>tsx", ":TranslateX<CR>", { desc = "Translate the text in the clipboard" })
        end,
    },
}
