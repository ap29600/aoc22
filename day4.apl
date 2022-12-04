#!/usr/bin/dyalogscript

f ← {⍵⍴⍨(≢⍵) 2 2}{⎕csv⍵⍬4}(','@('-'=⊢))¨⊃⎕nget'day4.txt'1
solve ← {+/0≥×/-/[2]⍵}
⎕←'part 1: ',solve f
⎕←'part 2: ',solve (0 1∘⌽⍤2)f
