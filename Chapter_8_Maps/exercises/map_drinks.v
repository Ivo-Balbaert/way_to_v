fn main() {
	mut drinks := {
				'beer': 'bière',
				'wine': 'vin',
				'water': 'eau',
				'coffee': 'café',
				'thea': 'thé'
	}
				
	println('The following drinks are available:\n')				
	for eng, _ in drinks {
		println(eng)
	}
	
	println('')		
	for eng, fr in drinks {
		println('The french for $eng is $fr')
	}

	// SORTING:
	println('')
	println('Now the sorted output:')
	mut keys := drinks.keys()
	keys.sort()

	println('The following sorted drinks are available:')				
	for eng in keys {
		println('$eng')
	}

	println('')		
	for eng in keys {
		println('The french for $eng is ${drinks[eng]}')
	}
}

/* Output:
The following drinks are available:
wine
beer
water
coffee
thea

The french for wine is vin
The french for beer is bière
The french for water is eau
The french for coffee is café
The french for thea is thé

Now the sorted output:
The following sorted drinks are available:
beer
coffee
thea
water
wine

The french for beer is bière
The french for coffee is café
The french for thea is thé
The french for water is eau
The french for wine is vin
*/
