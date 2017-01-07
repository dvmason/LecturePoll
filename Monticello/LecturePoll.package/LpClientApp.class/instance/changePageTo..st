manipulating DOM
changePageTo: aString
	body id: aString.
	up classList add: #hidden.
	(document getElementsByClassName: #temp) do: [ : element |
		element ifNotNil: [
			element parentNode removeChild: element]
	]