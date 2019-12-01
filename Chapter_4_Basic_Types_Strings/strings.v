fn main() { 
	println('abc'.len) // 3

	str0 := 'greek'
	str := 'Καλημέρα κόσμε'
	str2 := '世界'
	str3 := 'こんにちは'
	println(str0.len)   // 5
	println(str.len)    // 27
	println(str2.len)   // 6
	println(str3.len)   // 15

	n := 108
  println(n.str()) // 108 - – same as println(n)
  pi := 3.14159
  println(pi.str()) // 3.141590 – same as println(pi)

  country := 'China'
	// country = 'Italy' // `country` is immutable
	mut country2 := 'China'
	country2 = 'Italy'

	a := '1'
	b := '2'
	println(a.int() + b.int())  // 3

	str4 := 'Tokio'
	println(str4[0])  // T
	i := 3
	println(str4[i])  // i
	println(str4[str4.len - 1]) // o

	println('\\')   // => \
	str5 := 'This is Ivo\'s tutorial on V lang'
	println(str5) // 'This is Ivo's tutorial on V lang'

	println("\\")   // => \
	str6 := "This is Ivo\'s tutorial on V lang"
	println(str6) // 'This is Ivo's tutorial on V lang'

	a_str := 'a
	b
	c'
  println(a_str)
	// a
	// b
	// c

	println(r'This is a raw string \n') // This is a raw string \n

	// C string:
	// cstr := c'hello' // error: invalid initializer
} 