manipulating DOM
histogram: aString value: v outOf: t
	| div d |
	div := document createElement: #div.
	div instVarNamed:#className put: 'temp histogram'.
	d := document createElement: #div.
	d instVarNamed:#className put: 'hslider'.
	d instVarNamed:#style put: 'width: ',(v*100/t) truncated asString,'%'.
	d innerHTML: '&nbsp;'.
	div appendChild: d.
	d := document createElement: #div.
	d instVarNamed:#className put: 'htext'.
	d innerHTML: aString.
	div appendChild: d.
	d := document createElement: #div.
	d instVarNamed:#className put: 'hnum'.
	d innerHTML: v asString.
	div appendChild: d.
	^ div