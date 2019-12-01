fn main() {
	x1 := ' Eagle  \n'
	println('**' + x1.trim_space() + "**") // **Eagle**
		
	// Lower case of a string using to_lower():
	x2 := 'Eagle'
	println(x2.to_lower())  // => eagle
	// Upper case of a string using to_upper():
	println(x2.to_upper())  // => EAGLE

	// Finding a character or substring
	ix := x2.index('g') or { 
		println('char not found')
		return
	} 
	println(ix) // => 2
	ix2 := x2.index('ag') or { 
		println('substring not found')
		return
	} 
	println(ix2) // => 1

  // Substring:
	city := 'Tokio'
	println(city[1..3]) // => "ok"
	x3 := 'Flower'
	println (x3[0..4]) // => Flow
	
	// Split a string:
	p := 'There are many words in a sentence'
	arr := p.split(' ') // split by space
	println(arr) // => ["There", "are", "many", "words", "in", "a", "sentence"]
	println(arr.len) // => 7
	// you can also split on a word
	arr2 := p.split('r')
	println(arr2) // => ["The", "e a", "e many wo", "ds in a sentence"]

	// Check if some text occurs in a string using .contains:
	// contains true if there is a match, false if no match is found
	i4 := 'Hi, how may I help you today?'
	println(i4.contains('help')) // => true
	// .contains is case-sensitive:
	println(i4.contains('Help')) // => false

	println(x3.reverse()) // => rewolF

// Find and replace a part of a string:
	mut x := 'There are two monkeys in the tree'
	x.replace('two', 'three') // replace is not in place!
	println(x)  // => There are two monkeys in the tree
	x = x.replace('two', 'three') 
	println(x)  // => There are three monkeys in the tree
	// if a match is not found, it doesn't do anything, no error:
	y := 'There are mony birds in the tree'
	println(y.replace('many', 'two')) // => There are mony birds in the tree

	// Finding text between two characters:
	a := 'This is so [Crazy]'
	println(a.find_between('[',']')) // => Crazy
	// Finding text between two words:
	c := 'This is the scraped content: <title>Welcome to V lang</title>'
	println(c.find_between('<title>','</title>')) // => Welcome to V lang
	// if there is no match, no error:
	println(c.find_between('<random>','</random>')) // => 
	// if there is a match with the starting string
	println(c.find_between('<title>','</random>')) // => Welcome to V lang</title>
}
