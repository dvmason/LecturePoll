manipulating DOM
button: aString block: aBlock
	| div a |
	div := document createElement: #div.
	div instVarNamed:#className put: 'temp button'.
	a := document createElement: #a.
	a innerHTML: aString.
	a addEventListener: #click block: aBlock.
	div appendChild: a.
	^ div