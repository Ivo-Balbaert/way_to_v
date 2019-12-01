fn main() {
	mut a := [1, 2, 3]
	mut b := a
	loc1 := &a
	loc2 := &b
	println(loc1) // => 000000000061FD60
	println(loc2) // => 000000000061FD40
	b[0] = 0
	println(a)  // => [0, 2, 3]
	println(b)  // => [0, 2, 3]
	
	c := a.clone() 
	println(&c) // => // 000000000061FCD0
	a[2] = 9
	println(a)  // => [0, 2, 9]
	println(b)  // => [0, 2, 9]
	println(c)  // => [0, 2, 3]
}
