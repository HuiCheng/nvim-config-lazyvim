return {
    {
        "nvim-neotest/neotest",
        url = "https://github.com/HuiCheng/neotest.git",
        opts = {
            adapters = {
                ["neotest-go"] = {
                    args = { "-count=1" },
                },
            },
        },
    },
}
