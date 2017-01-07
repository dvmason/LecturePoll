process actions
doSetting: array
	| key |
	key := array removeFirst.
	settings upsert: {#key->key. #value->(' ' join: array)}