#!/usr/bin/dyalogscript

⎕io←0
⎕PP←20
⎕←'day 11'
obj  ← ,⍤(⍎¨)2∘↓
func ← {('{'⍨,⊢,'}'⍨) '\*'⎕r'×'⊢'old'⎕r'⍵'⊢∊¯3↑⍵}
num  ← ⍎⊃⍤⌽
split ← {mask ← ×⍺|⍵ ⋄ (⍵/⍨~mask) (⍵/⍨mask)}
throw ← {(c n f m a b)←⍺⌷⍵⋄(m split ⍺⍺⍎f,'n')(,⍨¨@1)⍤0 1@a b⊢ (≢n)∘+¨@0⍤(⍬⍨¨@1)@⍺⊢⍵}
top2  ← {×/{⍵[2↑⍒⍵]} 0⌷⍤1 ⊃ (⍺⍺throw/⍤⌽⍤,∘(⍳≢⍵))⍣⍺ ⊂⍵}

f ← 1↓¨(×∘≢¨⊆⊢)⊃⎕nget'day11.txt'1
x ← 0,↑{obj¨@0⊢ func¨@1⊢ num¨@2 3 4⊢' ,'∘(~⍤∊⍨⊆⊢)¨⍵}¨f

⎕←'  part 1: ',20           (⌊⊢÷3⍨)top2 x
⎕←'  part 2: ',10000 ((∧/3⌷⍤1⊢x)∘|)top2 x
