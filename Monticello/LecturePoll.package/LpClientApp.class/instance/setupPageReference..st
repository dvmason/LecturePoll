initialize-release
setupPageReference: aString
	^ (document getElementById: aString) ifNil: [
		self error: aString,' not found'
	]