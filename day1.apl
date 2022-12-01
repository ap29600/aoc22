#!/usr/bin/dyalogscript

f ← ⊃⎕nget'day1.txt'1             ⍝ lines of the file
c ← {{+/,⎕csv⍵⍬4}¨((0≠≢¨)⊆⊢)⍵} f  ⍝ split by empty lines, parse each and sum

⎕ ← 'part 1: ', ⌈/c               ⍝ take the max
⎕ ← 'part 2: ', 3{+/⍵[(⍒⍵)[⍳⍺]]}c ⍝ sort descending and sum the first 3
