return {
    {
        "williamboman/mason.nvim",
        opts = {
            PATH = "append",
        },
    },
    {
        "neovim/nvim-lspconfig",
        opts = function(_, opts)
            if string.find(vim.fn.system("uname -a"), "Android") ~= nil then
                opts.servers.ruff.mason = false
                opts.servers.lua_ls.mason = false
            end
        end,
    },
}
