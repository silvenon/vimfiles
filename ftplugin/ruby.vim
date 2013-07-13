" CUCUMBER

if expand("%:h") =~ "features/step_definitions"
  if exists("g:loaded_surround")
    let b:surround_103 = "Given(/^\r$/)" " g
    let b:surround_119 = "When(/^\r$/)"  " w
    let b:surround_116 = "Then(/^\r$/)"  " t
  endif
endif
