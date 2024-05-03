return{
    "nvim-treesitter/nvim-treesitter",
    main = "nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        highlight = {
            enable = true,
        },
        indent = {
            enable = true,
        },
    },
}
