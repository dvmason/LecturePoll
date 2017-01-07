private
match: aString update: array
	^ (aString = array first) ifTrue: [ array removeFirst ] ifFalse: false