return {
  -- Mason installation
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "clang-format",
        "codelldb",
        "typescript-language-server",
        "tailwindcss-language-server",
        "eslint-lsp",
        "lua-language-server",
        -- "html-lsp",
        "prettier",
        "stylua",
        -- "tailwindcss",
        "rust-analyzer",
        "emmet-language-server",
        "astro-language-server",
        "elixir-ls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- require("plugins.configs.lspconfig")
      require("config.lspconfig")
    end,
  },
}
