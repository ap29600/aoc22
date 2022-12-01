#!/usr/bin/dyalogscript

f ← ⊃⎕nget'day1.txt'1
c ← {{+/,⎕csv⍵⍬4}¨((0≠≢¨)⊆⊢)⍵} f

⎕ ← 'part 1: ', ⌈/c
⎕ ← 'part 2: ', 3{+/⍵[(⍒⍵)[⍳⍺]]}c
