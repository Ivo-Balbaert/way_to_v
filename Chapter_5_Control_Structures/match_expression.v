fn main() {
  number := 2
	s := match number {
		1    { 'one' }
		2    { 'two' }
		else {
			println('boo')
			'many' 
		}
	}
	println(s) // two
}
