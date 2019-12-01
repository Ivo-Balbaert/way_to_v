fn main() {
	i := 100
	ptr := &i
	println(ptr) // 0x7ffecdee3f64

	println('An integer: $i, its location in memory: $ptr\n')
	// An integer: 100, its location in memory: 0x7ffecdee3f64

  m := *ptr
  println(m) // 100

  assert(i == m) 
}
