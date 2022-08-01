if exists("g:loaded_comment")
  finish
endif
let g:loaded_comment = 1





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









nnoremap gtt :call CommentToggle()<cr>
xnoremap gtt :'<,'> call CommentToggle()<cr>

let s:enabled = 0 


function! CommentToggle() range
    if s:enabled
      let s:enabled = 0

      if &filetype ==# 'python'
        ":norm ^xx
         :s/# // 

      endif
      
      if &filetype ==# 'cpp'
        :norm ^xxx
      endif
      
      if &filetype ==# 'vim'
        :norm ^xx
      endif

    if &filetype ==# 'sql'
      :norm ^xxx
    endif






    else
      let s:enabled = 1
      
      if &filetype ==# 'python'
        ":norm ^i# 
        :s/^/# 
      endif
      
      if &filetype ==# 'cpp'
        :norm ^i// 
      endif
      
      if &filetype ==# 'vim'
        :norm ^i" 
      endif
      
      if &filetype ==# 'sql'
        :norm ^i-- 
      endif
      
    endif
endfunction

