return {
    {
        "neovim/nvim-lspconfig",
        priority = 50,
        config = function()
            require("lspconfig").lua_ls.setup({})
        end
    }
}
