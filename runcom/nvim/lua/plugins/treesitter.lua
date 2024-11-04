return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {
        "c",
        "lua",
        "vim",
        "vimdoc",
        "query",
        "elixir",
        "heex",
        "javascript",
        "typescript",
        "ruby",
        "html"
      },
      sync_install = false,
      -- default highlight was true it seems like night-owl theme
      -- is able to leverage treesitter and highlight better when
      -- set to false
      highlight = { enable = false },
      indent = { enable = true },
    })
  end
}
