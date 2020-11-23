augroup pencil
  autocmd!
  autocmd         FileType         markdown,mkd                                    call         pencil#init({"wrap": "soft"})
  autocmd         FileType         latex,tex                                       call         pencil#init({"wrap": "soft"})
  autocmd         FileType         text                                            call         pencil#init({"wrap": "soft"})
augroup END

let g:pencil#conceallevel = 3
let g:pencil#concealcursor = "c"
let g:airline_section_x = '%{PencilMode()}'
