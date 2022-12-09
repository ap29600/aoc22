#!/usr/bin/dyalogscript

⎕io←0
⎕←'day 8'
m ← ¯48+⎕ucs↑⊃⎕nget'day8.txt'1
rot ← {lr ← ⌽⍤⍺⍺⍤⌽ ↑⍤,⍥⊂ ⍺⍺ ⋄ ((⍉⍤2⍤lr⍉⍤2)⍪lr)⍵}

s ← {1,2</⌈\⍵}
⎕←'  part 1:',+/,∨⌿s rot m

d ← {s←⍸⍵⋄(⍳≢⍵)-(0,s)⌷⍨⊂1+(1+s)⍸⍳≢⍵}⍤1
⎕←'  part 2:',⌈/,×⌿⌈/[1]ms×⍤3 3⊢d rot ms ← ↑m∘≥¨⍳10
