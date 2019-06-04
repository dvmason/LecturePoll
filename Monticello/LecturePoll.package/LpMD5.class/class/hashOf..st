hash
hashOf: aString
	PjCore isNodePlatform ifTrue: [
		^ (crypto createHash: #md5)
				update: aString;
				digest: #hex
	] ifFalse: [
		^ self error: 'no implementation'
	]