#!/usr/bin/dyalogscript

⎕io←0
raw ← {⍵/⍨(~⍤≢'\$ ls.*|dir .*'⎕s 0)¨⍵}⊃⎕nget'day7.txt'1
d ← +\0,¯1↓(('$ cd '∘(⊃⍷)¨)-(2×'$ cd ..'∘≡¨))raw
p ← 0⍴⍨≢d ⋄ {p[⍵]←d[⍵] {(⍵=0)∨⍺>d[⍵]:⍵⋄⍺∇p[⍵]} ⍵-1}¨1↓⍳≢d
s ← {'$'=⊃⍵:0⋄⍎⊃' '(≠⊆⊢)⍵}¨raw
ss ← 0⍴⍨≢s ⋄ {ss[¯1↓⍺]+←⍵}/({p[⊃⍵]∪⍵}⍣≡¨,[.5]⌷∘s⍤⊂){(×⍵)/⍳≢⍵}s

⎕←'part 1: ',+/(1e5∘≥×⊢)ss
⎕←'part 2: ',⌊/{⍵/⍨⍵≥⍵[0]-4e7}ss
