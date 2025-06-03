return {
  'iamcco/markdown-preview.nvim',
  ft = { 'markdown' }, -- carrega só para arquivos markdown
  build = function()
    vim.fn['mkdp#util#install']() -- instala as dependências (npm)
  end,
  config = function()
    vim.g.mkdp_filetypes = { 'markdown' }
  end,
  keys = {
    {
      '<leader>mp',
      '<cmd>MarkdownPreviewToggle<CR>',
      desc = 'Markdown Preview',
    },
  },
}
