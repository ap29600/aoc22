#!/usr/bin/dyalogscript

⎕IO←0

⍝ m1 ← (∘.⊢⍨1 2 3)+3×3 3⍴1 2 0 0 1 2 2 0 1 ⍝ scores for each move
⍝ c  ← 3 3⍴2 0 1 0 1 2 1 2 0               ⍝ move choice matrix
⍝ m2 ← m1[{⍵[0], ⍵⌷c}¨⍳3 3]                ⍝ scores for part 2

⍝ the code above precomputes these matrices
m1 ← 3 3⍴4 8 3 1 5 9 7 2 6
m2 ← 3 3⍴3 4 8 1 5 9 2 6 7

f ← 3|'ABCXYZ'⍸⎕CSV⍠'Separator' ' '⊢'day2.txt' ⍝ moves as a n×2 matrix
⎕ ← 'part 1:', +/m1[↓f]
⎕ ← 'part 2:', +/m2[↓f]
