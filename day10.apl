#!/usr/bin/dyalogscript

⎕io←0
⎕←'day 10'
b ← +\1,{0::0⋄⍎⍵}¨⊃,/' '(≠⊆⊢)¨⊃⎕nget'day10.txt'1
⎕←'  part 1:',+/(20+40×⍳6){⍺×⍵[⍺-1]}b
⎕←' part 2:',⍥⊂'.#'⌷⍨⊂1≥|40{(⌊⍺÷⍨≢⍵)⍺⍴⍵-⍺|⍳≢⍵}b
