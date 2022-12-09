#!/usr/bin/dyalogscript

⎕io←0
m ← (/⍨/)↓⊃¨⍎¨@1⊢⍉↑' '(≠⊆⊢)¨⊃⎕nget'day9.txt'1
s ← ↓+⍀↑(1 0)(¯1 0)(0 1)(0 ¯1)⌷⍨⊂'RLUD'⍳⊃m
follows ← {p ← 0 0 ⋄ (⊂0 0),{p+←(××(1⍨<⌈/⍤|))⍵-p ⋄ p}¨{⍵/⍨~0,2≡/⍵}⍵}

⎕←'  part 1:',≢∪follows⊢ s
⎕←'  part 2:',≢∪follows⍣9⊢ s
