#!/usr/bin/dyalogscript

⎕io←0
p ← {⎕csv⍵⍬4}⊃⎕nget'day18.txt'1
field ← 1@(↓p+1)⊢0⍴⍨3⍴3+⌈/,p

inbounds ← {⍵⌿⍨(0∘≤ ∧⍥(∧/) (<⍤1)∘(⍴⍺))⍵}
step ← {↓(~⍵[⊂⍤1⊢n])⌿n←⍵inbounds↑∪,((⊢,-)(⊢⌽¨⊂⍤=∘0)⍳3)∘.+⍺}
fill ← 0 0 0 {m←⍵ ⋄ {~×≢⍵: m ⋄ m[⍵]←1 ⋄ ∇⍵step m},⊂⍺} field

⎕←'part 1: ',part1←1 2 3+.{+/,2≠⌿⍤⍺⊢⍵}⊂field
⎕←'part 2: ',part1-1 2 3+.{+/,2≠⌿⍤⍺⊢⍵}⊂fill
