fn main() {
	mut s := 'Hel' + 'lo, '
	s += 'world!'
	println(s)// Hello, world!

	n := 7
	// println('n = ' + n)       // error: expected type `string`, but got `int`
  println('n = $n')            // 1)
	println('n = ' + n.str())    // 2)
}

/* Output:
Hello, world!
n = 7
n = 7
*/