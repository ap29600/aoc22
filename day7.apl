#!/usr/bin/dyalogscript

⎕←'day 7'
⎕io←0
raw ← '\$ cd.*|\d.*'⎕s'&'⊢⊃⎕nget'day7.txt'1
s ← ⍬
p ← ⍬
{⎕d∊⍨⊃⍵ : s[p]+←⍎⊃' '(≠⊆⊢)⍵ ⋄ '$ cd ..'≡⍵ : p↓⍨←¯1 ⋄ p,←≢s ⋄ s,←0}¨raw
⎕←'  part 1:',+/(1e5∘≥×⊢)s
⎕←'  part 2:',⌊/{⍵/⍨⍵≥⍵[0]-4e7}s
