#!/usr/bin/dyalogscript

⎕←'day 12'
map ← ¯97+⎕ucs↑⊃⎕nget'day12.txt'1
(start end) ← 1↓¨⍸¯14 ¯28∘.=map
map[start end]←0 25
dist ← 0@(⊂end)⊢(⍴⍴×/⍤⍴)map

rot ← {lr ← ⍺⍺ {⍺⍵} ⌽⍤⍺⍺⍤⌽ ⋄ (lr,(⍉¨⍤2⍤lr⍉⍤2))⍵}
maps ← {0,¯1≤2-/⍵}rot map
dirs ← (0 ¯1)(0 1)(¯1 0)(1 0)

legal ← {(1+⊃⍵),⊂∪(,x∘.+dirs)/⍨,maps∘.⌷⍨x←⊃⌽⍵}
good  ← {c,⊂(dist[m]>c←⊃⍵)/m←⊃⌽⍵}
apply ← {dist[⊃⌽⍵]⌊←⊃⍵ ⋄ ⍵}

apply⍤good⍤legal⍣{0=≢⊃⌽⍺}0,⊂⊂end

⎕←'part 1: ',dist[⊂start]
⎕←'part 2: ',⌊/dist[,⍸map=0]
