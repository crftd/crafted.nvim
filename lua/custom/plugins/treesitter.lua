return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local filetypes = {
      'lua',
      'python',
      'rust',
      'html',
      'css',
      'javascript',
      'typescript',
      'svelte',
      'tsx',
      'toml',
      'yaml',
      'markdown',
      'dockerfile',
      'hcl',
      'json',
      'sql',
      'bash',
      'zsh',
    }
    require('nvim-treesitter').install(filetypes)
    vim.api.nvim_create_autocmd('FileType', {
      pattern = filetypes,
      callback = function() vim.treesitter.start() end,
    })
  end,
}
