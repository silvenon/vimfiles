function! s:CucumberHelpers()
  if exists("g:loaded_surround")
    let g:surround_103 = "Given(/^\r$/)" " g
    let g:surround_119 = "When(/^\r$/)"  " w
    let g:surround_116 = "Then(/^\r$/)"  " t
  endif
endfunction

function! s:EJSHelpers()
  if exists("g:loaded_surround")
    let g:surround_45 = "<% \r %>"  " -
    let g:surround_61 = "<%= \r %>" " =
    let g:surround_35 = "<%# \r %>" " #
  endif
endfunction

au BufRead *features/step_definitions/*.rb call s:CucumberHelpers()
au BufRead *.jst.ejs                       call s:EJSHelpers()
