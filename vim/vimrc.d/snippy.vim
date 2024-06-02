lua << EOF
  require('snippy').setup({
      snippet_dirs = '~/.vim/snippets',
      mappings = {
          is = {
              ['<C-l>'] = 'expand_or_advance',
              ['<S-Tab>'] = 'previous',
          },
          nx = {
              ['<leader>x'] = 'cut_text',
          },
      },
  })
EOF
