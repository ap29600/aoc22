#!/usr/bin/dyalogscript

⎕io←0
raw ← {⍵/⍨(~⍤≢'\$ ls.*|dir .*'⎕s 0)¨⍵}⊃⎕nget'day7.txt'1
s ← ⍬
p ← ⍬
{⎕d∊⍨⊃⍵ : s[p]+←⍎⊃' '(≠⊆⊢)⍵ ⋄ '$ cd ..'≡⍵ : p↓⍨←¯1 ⋄ p,←≢s ⋄ s,←0}¨raw
⎕←'part 1: ',+/(1e5∘≥×⊢)s
⎕←'part 2: ',⌊/{⍵/⍨⍵≥⍵[0]-4e7}s
