accessing
at: symbol put: value
	value ifNil: [
		localStorage removeItem: symbol
	] ifNotNil: [
		localStorage setItem: symbol to: value].
	^ value