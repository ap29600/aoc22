#!/usr/bin/dyalogscript

f ← ⎕json¨↑'-'(≠⊆⊢)¨⎕csv'day4.txt'
solve ← {+/0≥×/(-⌿⍤2)⍵}
⎕←'part 1: ',solve f
⎕←'part 2: ',solve (0 1∘⌽⍤2)f
