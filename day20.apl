#!/usr/bin/dyalogscript

⎕pp←20
⎕io←0
input ← ,{⎕csv⍵⍬4}⊃⎕nget'day20.txt'1

to ← {⎕io←1 ⋄ ⍺,⍺+(××⍳⍤|)⍵-⍺}
rot ← {1∘⌽@(⊃to/⍺)⊢⍵}
mix ← {p←⍳n←≢⍵ ⋄ ⍵[p]⊣⍵∘{p rot⍨←s ((n-1)|(s←p⍳⍵)+d←⍺[⍵])}¨(⍺×n)⍴⍳n}
sum ← {+/⍵[(≢⍵)|1e3 2e3 3e3+0⍳⍨⍵]}
⎕←'part 1:',⍕sum 1  mix input
⎕←'part 1:',⍕sum 10 mix input×811589153
