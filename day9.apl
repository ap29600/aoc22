#!/usr/bin/dyalogscript

⎕io←0
⎕←'day 9'
s ← ↓⍉+\9 11∘.○0j1*'RULD'⍳{(⍎⍤(2∘↓)¨⍵)/⊃¨⍵}⊃⎕nget'day9.txt'1
chain ← {n←⌈/,⍺⋄p←n 2⍴0⋄+/∘≠⍤1⊢(⍺-1)∘.⌷{p+←(××⍤1 0(1∘< ⌈/⍤|)) (⍵⍪¯1↓p)-p ⋄ p}¨⍵,n⍴⊢/⍵}

(a b) ← 1 9 chain s
⎕ ← '  part 1: ',a
⎕ ← '  part 2: ',b
