sending
send: key with: anObject
	ws send: '{"',key,'":',anObject asJSON,'}'