#!/usr/bin/dyalogscript

(a b) ← (×⍤≢¨⊆⊢)⊃⎕nget'day5.txt'1
a ← ' '(+/⍤=↓⊢)¨↓{⍵⌿⍨0 1 0 0⍴⍨≢⍵}⍉↑¯1↓a
b ← ⌽↓0 1 0 1 0 1/⎕csv⍠'Separator' ' '⊢ b⍬4

step ← {(k i j)←⍺ ⋄ ((⍺⍺ k↑⊃⍵[i])∘,¨@j)(k∘↓¨@i)⍵}
⎕ ← 'part 1: ',⊃¨⊃ ⌽step/b,⊂a
⎕ ← 'part 2: ',⊃¨⊃ ⊢step/b,⊂a
