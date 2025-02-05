return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    ---@diagnostic disable: missing-fields
    require 'nvim-treesitter.configs'.setup {
      ensure_installed = { "c", "go", "lua", "rust", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
      sync_install = false,
      auto_install = true,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
    }
  end
}
