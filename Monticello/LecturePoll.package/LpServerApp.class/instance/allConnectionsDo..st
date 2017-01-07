connecting
allConnectionsDo: aBlock
	wsServer clients do: [ : ws | aBlock value: (ws serverConnection)]