fn main() {
	numbers := [1, 2, 3, 4, 5]
	for num in numbers {
		print(num)            // => 12345
	}
	println('')
	names := ['Sam', 'Peter']
	for i, name in names {
		println('$i) $name')  // =>      0) Sam
	}                       //         1) Peter

	for _, name in names {  // _ discards the index, but can be left out entirely
		print('$name - ')     // => Sam - Peter -
	}
	println('')
	for name in names {  
		print('$name - ')			// => Sam - Peter -
	}
  println('')
	for ix, _ in names { // _ discards the name
		print('$ix ')	     // => 0 1
	}
}
