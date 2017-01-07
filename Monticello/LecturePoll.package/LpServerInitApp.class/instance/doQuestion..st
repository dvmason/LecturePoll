process actions
doQuestion: array
	| open type |
	lastCourse := array removeFirst.
	lastQuestion  := array removeFirst.
	open := (self match: #open update: array)=false ifFalse: QuestionOpen.
	type := array removeFirst.
	questions insert: {#course->lastCourse. #name->lastQuestion. #type->type. #status->open. #description->(' ' join: array)}