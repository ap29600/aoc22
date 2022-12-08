#!/usr/bin/dyalogscript

⎕io←0
⎕←'day 8'
m ← ¯48+⎕ucs↑⊃⎕nget'day8.txt'1
b ← (⌽⍤h⍤⌽∨h←{1,2</⌈\⍵})

dl ← {s←⍸⍵⋄(⍳≢⍵)-(0,s)⌷⍨⊂1+(1+s)⍸⍳≢⍵}⍤1
dlr ← ⌽⍤dl⍤⌽ ,⍥⊂ dl
bigmap ← ↑(0 2 1∘⍉¨⍤dlr⍤(0 2 1∘⍉),dlr) ms ← ↑m∘≥¨⍳10

⎕←'  part 1:',+/,(⍉⍤b⍤⍉∨b)m
⎕←'  part 2:',⌈/,×⌿⌈/[1]ms×⍤3 3⊢bigmap
