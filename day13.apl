#!/usr/bin/dyalogscript

⎕io←0
x ← ⎕json¨↑(×⍤≢¨⊆⊢)⊃⎕nget'day13.txt'1
div ← ⎕json¨'[[2]]' '[[6]]'

cmp ← {
	⍺<⍥≢⍥⍴⍵   : ⍵∇⍨,⍺ ⍝ mismatched ranks
	⍺>⍥≢⍥⍴⍵   : ⍺∇,⍵
	⍬≡⍴⍺      : ×⍺-⍵ ⍝ scalars
	∨/0=≢¨⍺⍵  : ×⍺-⍥≢⍵ ⍝ one is empty
	0≠h←⍺∇⍥⊃⍵ : h ⍝ head is different
	⍺∇⍥(1∘↓)⍵ ⍝ recur on tail
}

⎕ ← 'part 1: ',+/1+⍸¯1=cmp/x
⎕ ← 'part 2: ',×/1 2++/1=div∘.cmp,x
