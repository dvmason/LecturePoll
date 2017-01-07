initialize-release
setupPageReferences
	body := document body.
	#( up emailField cookie nameField courseList courseField
		questionList question mclist submitLogin newOption messageArea errorArea
		) do: [ : each |
			self instVarNamed: each put: (	self setupPageReference: each ) ]