return {
    {
        "nvim-tree/nvim-tree.lua",

        config = {
            sort_by = "case_sensitive",
            view = { width = 35 },
            actions = { open_file = { quit_on_open = false } },
            filters = { git_ignored = false, custom = { "^.git$", "^node_modules$" } },
            renderer = { icons = { show = { git = true, file = true, folder = true, folder_arrow = true } } },
        },

        keys = {
            { "<space>e", "<cmd>lua require('nvim-tree.api').tree.toggle()<CR>", desc = "toggle file explorer" },
            {
                "<space>E",
                "<cmd>lua require('nvim-tree.api').tree.toggle({find_file=true, focus=true})<CR>",
                desc = "toggle file explorer",
            },
        },

        init = function()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
        end,
    },

    {
        "akinsho/bufferline.nvim",
        opts = {
            options = {
                offsets = {
                    {
                        text = "NvimTree",
                        filetype = "NvimTree",
                        highlight = "Directory",
                        text_align = "left",
                    },
                },
            },
        },

        keys = {
            {
                "<C-c>",
                function()
                    local bd = require("mini.bufremove").delete
                    if vim.bo.modified then
                        local choice =
                            vim.fn.confirm(("Save changes to %q?"):format(vim.fn.bufname()), "&Yes\n&No\n&Cancel")
                        if choice == 1 then -- Yes
                            vim.cmd.write()
                            bd(0)
                        elseif choice == 2 then -- No
                            bd(0, true)
                        end
                    else
                        bd(0)
                    end
                end,
                desc = "close the current buffer",
            },
        },
    },
}
