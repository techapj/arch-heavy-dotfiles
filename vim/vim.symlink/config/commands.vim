command! -nargs=* MyGgrep call MyGgrep('<args>')
command! -nargs=0 DeleteAllOtherBuffers call DeleteAllOtherBuffers()
command! -nargs=0 GrepFromSearch call GrepFromSearch()
command! -nargs=0 GrepFromWord call GrepFromWord()
