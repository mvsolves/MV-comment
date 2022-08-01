if exists("g:loaded_comment")
  finish
endif
let g:loaded_comment = 1


" comment block for sql
au filetype sql nnoremap gc 0:norm i-- <ESC><S-$>
au filetype sql nnoremap gx 0:norm xxx<ESC><S-$>

au filetype sql vnoremap gcc 0:norm i-- <ESC><S-$>
au filetype sql vnoremap gxx 0:norm xxx<ESC><S-$>


" comment block for python 
au filetype python nnoremap gc 0:norm i# <ESC><S-$>
au filetype python nnoremap gx 0:norm xx<ESC><S-$>

au filetype python vnoremap gcc 0:norm i# <ESC><S-$>
au filetype python vnoremap gxx 0:norm xx<ESC><S-$>


" comment block for html 
au filetype html nnoremap gc 0:norm i<!-- <ESC>A --><ESC>
au filetype html nnoremap gx 0:norm xxxxxx<ESC><S-$>vhhhd<ESC>

au filetype html vnoremap gcc 0:norm i<!-- <ESC>:'<,'>g/$/norm A --><ESC>:noh<ESC>
au filetype html vnoremap gxx 0:norm xxxxxx<ESC>:'<,'>s/ -->//g<ESC>

" comment block for css 
au filetype css nnoremap gc 0:norm i/* <ESC>A */<ESC>
au filetype css nnoremap gx 0:norm xxx<ESC><S-$>vhhd<ESC>

au filetype css vnoremap gcc 0:norm i/* <ESC>:'<,'>g/$/norm A */<ESC>:noh<ESC>
au filetype css vnoremap gxx 0:norm xxx<ESC>:'<,'>s#*/##g<ESC>


" comment block for cpp 
au filetype cpp nnoremap gc 0:norm i// <ESC><S-$>
au filetype cpp nnoremap gx 0:norm xxx<ESC><S-$>

au filetype cpp vnoremap gcc 0:norm i// <ESC><S-$>
au filetype cpp vnoremap gxx 0:norm xxx<ESC><S-$>


" comment block for vim 
au filetype vim nnoremap gc 0:norm i" <ESC><S-$>
au filetype vim nnoremap gx 0:norm xx<ESC><S-$>

au filetype vim vnoremap gcc 0:norm i" <ESC><S-$>
au filetype vim vnoremap gxx 0:norm xx<ESC><S-$>







nnoremap gtt :call CommentToggle()<cr>
let s:enabled = 0 

function! CommentToggle()
    if s:enabled       
      " au BufEnter *.py 0:norm i# <ESC> <S-$>
      
      0:norm i# $
      let s:enabled = 0 

    else
      " au BufEnter *.py 0:norm xx<ESC> <S-$>
      
      0:norm xx$
      let s:enabled = 1
    endif
endfunction

