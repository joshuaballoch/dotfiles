return {
  "folke/lazydev.nvim",
  "ggandor/leap.nvim",
  "rking/ag.vim",
  "nathangrigg/vim-beancount",
  "roxma/vim-tmux-clipboard",
  "tmux-plugins/vim-tmux-focus-events", -- support for vim-tmux-clipboard
  {
    "scrooloose/nerdtree",
    cond = (function() return not vim.g.vscode end)
  },
  {
    "scrooloose/nerdcommenter",
    cond = (function() return not vim.g.vscode end)
  },
  {
    "jgdavey/tslime.vim",
    cond = (function() return not vim.g.vscode end)
  },
  {
    "vim-test/vim-test",
    cond = (function() return not vim.g.vscode end)
  },
  {
    "christoomey/vim-tmux-navigator",
    cond = (function() return not vim.g.vscode end)
  },
  "rlue/vim-fold-rspec",
  "tpope/vim-endwise",
  "tpope/vim-fugitive",
  "tpope/vim-rails",
  "tpope/vim-surround",
  "vim-ruby/vim-ruby",
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",

    -- Telescope doesn't work with VSCode
    cond = (function() return not vim.g.vscode end)
  }
}