fn main() {
	params := {
		'k1': 'v1',
		'k2': 'v2',
		'k3': 'v3'
	}

	keys := params.keys()
	pairs := keys.map('$it=${ params[it] }') 
	println(pairs.join(' - ')) // => k1=v1 - k2=v2 - k3=v3
}