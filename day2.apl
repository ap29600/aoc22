#!/usr/bin/dyalogscript

⎕IO←0

⍝ s1[i j] is the outcome of playing move j against move i.
s1 ← 1 0 ¯1⌽3 3⍴⍳3
⍝ s2[i j] is the move to get outcome j against move i.
⍝ s2 can be found by squaring the permuations because
⍝ the rows of s1 are 3-cycles and square to their inverse.
s2 ← ((⊂⌷⊢)⍤1)s1

⍝ full score: (value of move played) + 3 × outcome
m1 ← (1+3 3⍴⍳3)+3×s1
⍝ same, but use s2 to choose the move for the desired outcome
m2 ← m1({⍺[⍵]}⍤1)s2

f ← ¯65 ¯88(+⍤1)⎕ucs{⍵[;0 2]}↑⊃⎕nget'day2.txt'1
⎕ ← 'part 1:', +/m1[↓f]
⎕ ← 'part 2:', +/m2[↓f]
