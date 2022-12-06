#!/usr/bin/dyalogscript

f ← 3 1 2⍉⎕json¨↑'-'(≠⊆⊢)¨⎕csv'day4.txt'
solve ← {+/0≥×⌿-⌿⍵}
⎕←'part 1: ',solve f
⎕←'part 2: ',solve (⊖@2)f
