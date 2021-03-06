" formative.vim - ClangFormat with text-objects
" Author: Fraser Cormack <frasercrmck@gmail.com>
" Version: 1.3
" License: This file is placed in the public domain.
" Source repository: https://github.com/frasercrmck/formative.vim

" Initialization {{{
if exists("g:loaded_formative") || &cp
  finish
endif

let g:loaded_formative = 1
" }}}

let g:fmtv_clang_format_py = get( g:, 'fmtv_clang_format_py', '~/.vim/clang-format.py')

let g:fmtv_clang_format_nor_key  = get( g:, 'fmtv_clang_format_nor_key', '<C-k>')
let g:fmtv_clang_format_vis_key  = get( g:, 'fmtv_clang_format_vis_key', '<C-k>')
let g:fmtv_clang_format_ins_key  = get( g:, 'fmtv_clang_format_ins_key', '<C-k>')
let g:fmtv_clang_format_line_key = get( g:, 'fmtv_clang_format_line_key', '<C-k>k')
let g:fmtv_clang_format_file_key = get( g:, 'fmtv_clang_format_file_key', '<C-k>u')

execute "nnoremap <silent> " . g:fmtv_clang_format_nor_key .
      \ " :<C-U>set opfunc=formative#ClangFormat<CR>g@"
execute "nnoremap <silent> " . g:fmtv_clang_format_line_key .
      \ " :<C-U>call formative#ClangFormat('oneline')<CR>"
execute "nnoremap <silent> " . g:fmtv_clang_format_file_key .
      \ " :<C-U>call formative#ClangFormat('file')<CR>"

execute "vnoremap <silent> " . g:fmtv_clang_format_vis_key .
      \ " :<C-U>call formative#ClangFormat(visualmode(), 1)<CR>"

execute "inoremap <silent> " . g:fmtv_clang_format_ins_key .
      \ " <ESC>:<C-U>call formative#ClangFormat('oneline')<CR>a"

