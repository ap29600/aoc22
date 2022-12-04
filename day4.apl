#!/usr/bin/dyalogscript

(a b) ← {(⍵[;1 2])(⍵[;3 4])}{⎕csv⍵⍬4}(','@('-'=⊢))¨ ⊃⎕nget'day4.txt'1
⎕←'part 1: ',+/0≥×/a-b
⎕←'part 2: ',+/0≥×/a-⌽b
