" lua << EOF
"
" require('config/hello')
" how to fix this path problem
" demo = "config.hello"
" package.loaded.demo = nil
" require('config/hello')
"
" EOF


runtime! ./config/*.vim
