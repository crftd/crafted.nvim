vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'racket', 'scheme', 'lisp', 'clojure' },
  callback = function()
    vim.g['conjure#filetype#racket'] = 'conjure.client.racket.stdio'

    vim.pack.add({
      { src = 'https://github.com/Olical/conjure' },
    }, {
      load = true,
    })
  end,
})
