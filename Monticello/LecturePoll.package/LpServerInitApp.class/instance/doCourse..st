process actions
doCourse: array
	| open code webpage |
	open := self match: 'open' update: array.
	code := array removeFirst.
	webpage := array removeFirst.
	courses upsert: {#name->code. #open->open. #webpage->webpage. #description->(' ' join: array)}