#!/usr/bin/dyalogscript

⎕←'day 5'
(a b) ← (×⍤≢¨⊆⊢)⊃⎕nget'day5.txt'1
a ← ' '(+/⍤=↓⊢)¨↓{⍵⌿⍨0 1 0 0⍴⍨≢⍵}⍉↑¯1↓a
b ← ⌽⎕d∘(⍎¨∊⍨⊆⊢)¨b

step ← {(k i j)←⍺ ⋄ (⊂⍺⍺ k↑⊃⍵[i])(,¨@j)k(↓¨@i)⍵}
⎕ ← '  part 1: ',⊃¨⊃ ⌽step/b,⊂a
⎕ ← '  part 2: ',⊃¨⊃ ⊢step/b,⊂a
