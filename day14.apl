#!/usr/bin/dyalogscript

⎕io←0

pixels ← {⊃⍪/2{+⍀(⍺⌊⍵)⍪⍉↑(⍴∘1)¨|⍺-⍵}/↓{(2÷⍨≢⍵) 2⍴⍵}⎕json¨⍵}
r ← ⌽⊃⍪/pixels¨⎕d∘(∊⍨⊆⊢)¨⊃⎕nget'day14.txt'1
s ← 0 500
m ← 2@(↓r){⍪∘2⊢2,⍵,2}((2 3+⊢⌈s⍨+⊃)⌈⌿r)⍴0

step ← {⍵,⊃,∘(⊂⍬)⊂¨⌷∘p⊂⍸~×⍺[p←(⊃⌽⍵)∘+¨(1 0)(1 ¯1)(1 1)]}
fill ← {p←m∘step⍣≡¯1↓⍵ ⋄ m[⊂⊃⌽p]←1 ⋄ p}

path ← fill⍣{(¯2+≢m)≤⊃⊃⌽⍺} ,s⍬
⎕←'part 1: ',¯1++/,1=m

fill⍣{s≡⊃⌽⍺} path
⎕←'part 2:',+/,1=m
