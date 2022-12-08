#!/usr/bin/dyalogscript

⎕←'day 6'
⎕io←0
f←⊃⊃⎕nget'day6.txt'1
solve ← {⍺+⍳∘1×/≠⍤1↑⍺,/⍵}
⎕←'  part 1:',4 solve f
⎕←'  part 1:',14 solve f
