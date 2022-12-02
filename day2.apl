#!/usr/bin/dyalogscript

⎕IO←0

m ← (∘.⊢⍨1 2 3)+3×3 3⍴1 2 0 0 1 2 2 0 1 ⍝ scores for each move
c ← 3 3⍴2 0 1 0 1 2 1 2 0               ⍝ move choice matrix
p ← m[{⍵[0], ⍵⌷c}¨∘.,⍨⍳3]               ⍝ scores for part 2

f ← 3|'ABCXYZ'⍸⎕CSV⍠'Separator' ' '⊢'day2.txt' ⍝ moves for as a n×2 matrix
⎕ ← 'part 1:', +/m[↓f]
⎕ ← 'part 2:', +/p[↓f]
