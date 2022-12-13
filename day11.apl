#!/usr/bin/dyalogscript

⎕io←0
⎕PP←20
⎕←'day 11'
obj  ← ,⍤(⍎¨)2∘↓
num  ← ⍎⊃⍤⌽
func ← {a b←¯2↑⍵⋄a b≡(,'*')'old':2 0⋄a≡,'*':1(⍎b)⋄0(⍎b)}
apply ← {⍺[0]=0:⍵+⍺[1]⋄⍺[0]=1:⍵×⍺[1]⋄⍵×⍵}
split ← {mask ← ×⍺|⍵ ⋄ (⍵/⍨~mask) (⍵/⍨mask)}
throw ← {
	ret ← ⍵
	(c n f m a b)←⍺⌷⍵
	aa bb ← m split ⍺⍺ f apply n
	ret[⍺;]←(c+≢n) ⍬ f m a b
	ret[⊂a 1]←⊂(∊ret[⊂a 1]),aa
	ret[⊂b 1]←⊂(∊ret[⊂b 1]),bb
	ret
}

top2  ← {×/{⍵[2↑⍒⍵]} 0⌷⍤1 ⊃ ⍺⍺throw/⌽(⊂⍵),(⍺∘×⍴⍳)≢⍵ }
f ← 1↓¨(×∘≢¨⊆⊢)⊃⎕nget'day11.txt'1
x ← 0,↑{∊∘obj¨@0⊢ func¨@1⊢ num¨@2 3 4⊢' ,'∘(~⍤∊⍨⊆⊢)¨⍵}¨f

⎕←'  part 1: ',⍕20  (⌊⊢÷3⍨)top2 x
⎕←'  part 2: ',⍕1e5 ((∧/3⌷⍤1⊢x)∘|)top2 x
