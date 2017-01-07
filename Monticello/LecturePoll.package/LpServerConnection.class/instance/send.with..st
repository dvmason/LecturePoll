message sends
send: key with: anObject
	| string |
	string := '"',key,'":',anObject asJSON.
	message ifNotNil: [
		string := string,',"message":',message asJSON.
		message := nil
	].
	error ifNotNil: [
		string := string,',"error":',error asJSON.
		error := nil
	].
	ws send: '{',string,'}'