initialization-release
loadFromStdin
	| rl |
	rl := Readline createInterface: {#input -> process stdin. #terminal -> false} asDictionary.
	rl on: #line block: [ : line |
		self processLine: line
	].
	rl on: #close block: [
		self closeDB
	]