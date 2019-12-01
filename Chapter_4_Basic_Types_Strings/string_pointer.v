fn main() {
	str := 'good bye'
	mut ptr := &str
  println(ptr)  // prints address, for example: 0x7ffc58aee0f0
	*ptr = 'ciao'
  println(*ptr) // 'ciao'
  println(str)  // 'ciao'
}

/*
000000000062FE20
ciao
ciao
*/