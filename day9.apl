#!/usr/bin/dyalogscript

⎕io←0
s ← ↓⍉+\9 11∘.○0j1*'RULD'⍳{(⍎⍤(2∘↓)¨⍵)/⊃¨⍵}⊃⎕nget'day9.txt'1
chain ← {p ← ⍺2⍴0 ⋄ {p+←(××⍤1 0(1∘< ⌈/⍤|)) (⍵⍪¯1↓p)-p ⋄ ¯1↑p}¨⍵,⍺⍴⊢/⍵}
⎕←'  part 1:',≢∪1 chain s
⎕←'  part 2:',≢∪9 chain s
