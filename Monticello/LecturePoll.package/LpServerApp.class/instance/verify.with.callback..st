database accessing
verify: user with: cookie callback: aBlock
	cookies exists: { #email->user . #cookie->cookie } callback: [ : exists |
		exists ifTrue: [
			people select: #(name) with: { #email->user } callback: [ : err : rows |
				err ifNotNil: [
					aBlock value: nil
				] ifNil:  [
				aBlock value: rows 
			]]
		] ifFalse: [
			aBlock value: nil
		]
	]