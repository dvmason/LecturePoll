process actions
doAnswer: array
	| answer email |
	email  := array removeFirst.
	answer := (' ' join: array).
	self answersForCourse: lastCourse name: lastQuestion email: email answer: answer