function! s:CucumberHelpers()
  if exists("g:loaded_surround")
    let g:surround_103 = "Given(/^\r$/)" " g
    let g:surround_119 = "When(/^\r$/)"  " w
    let g:surround_116 = "Then(/^\r$/)"  " t
  endif
endfunction

au BufRead *features/step_definitions/*.rb call s:CucumberHelpers()
