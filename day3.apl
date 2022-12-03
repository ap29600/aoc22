#!/usr/bin/dyalogscript

f ← (38 96{⍵-⍺[⍺⍸⍵]}⎕ucs)¨⊃⎕nget'day3.txt'1
⎕←'part 1: ',+/⊃¨((2÷⍨≢)(↑∩↓)⊢)¨f
⎕←'part 2: ',+/⊃¨∩/{(3÷⍨≢⍵)3⍴⍵}f
