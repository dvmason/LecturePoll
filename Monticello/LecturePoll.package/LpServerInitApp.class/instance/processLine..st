process actions
processLine: line
	| array key |
	(line first = '#') ifTrue: [ ^ self ].
	array := line split: ' '.
	key := array removeFirst.
	self perform: ('do',key capitalized,':') asSymbol with: array