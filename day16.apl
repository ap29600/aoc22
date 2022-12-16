#!/usr/bin/dyalogscript
⎕io←0

g ← ↑{⍵[⍋⍵]}(1∘⌷ , ⊃⍤(⍎¨(5∘⌷)) ,⍥⊂ 10∘↓)¨' =,;'∘(~⍤∊⍨⊆⊢)¨⊃⎕nget'day16.txt'1
g ← 1∘↓⍤1⊢((0⌷⍤1⊢g)∘⍸¨ 2⌷⍤1⊢g) (⊣@2)⍤0 1⊢ g
keep ← (1@0)×¨⊃¨0⌷⍤1⊢g

⍝ adjacency lists to matrix, unreachable == 1+≢mat
i ← (⊃,/)⍣2{⍺,¨⍵}/¨(⍳⍤≢(,⍥⊂)¨1∘⌷⍤1)g
mat ← (1@i)0⍴⍨2⍴≢g
mat ← (~∘.=⍨⍳≢mat)×((1∘+≢) (⊣@(=∘0)) ⊢)mat

⍝ Floyd-Warshal shortest path + remove useless
s ← ⊃{ {⍵⌊⍵[;⍺]∘.+⍵[⍺;]}/(⌽⍳≢⍵),⊂⍵ }mat
s ← 1+keep⌿keep/s
w ← keep/0⌷⍤1⊢g

lim ← 30
score ← {+/(w[1↓⍵])×lim-+\s[2,/⍵]}
msk ← 1↓⍳≢s
dfs ← {⍺≥lim: score¯1↓⍵ ⋄ (1+≢msk)=≢⍵: score⍵ ⋄ ⌈/(⍺+s[⊢/⍵;nxt])∇¨⍵∘,¨nxt←msk~⍵}
⎕←'part 1: ', 0 dfs ,0

lim ← 26
subs ← {⍵/⍨(≢s)(-≥⊢)≢¨⍵} {⎕io←1 ⋄ ⌿∘⍵¨↓⌽⍉2⊥⍣¯1⊢¯1+⍳2*≢⍵}1+⍳¯1+≢s
⌈/{⎕ ← 'go: ',⍵ ⋄ msk⊢←⍵ ⋄ a←0 dfs ,0 ⋄ msk~⍨←1↓⍳≢s ⋄ a + 0 dfs ,0 }¨subs
