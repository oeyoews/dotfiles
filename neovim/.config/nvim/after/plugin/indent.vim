if !exists('g:loaded_indent_blankline')
    finish
endif

lua << EOF
require("indent_blankline").setup {
    char = "|",
    buftype_exclude = {"terminal"}
}
EOF
let g:indent_blankline_filetype_exclude = ['help', 'startify', 'NvimTree', 'calendar']
