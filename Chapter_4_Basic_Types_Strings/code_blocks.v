fn main() {
  mut a := 42
  a = 44
  println(a)  // 44
  {
		b := 67  
		println(b) // 67
    a = 45
	}
  // b = 9  // error: undefined `b`
  println(a) // 45
}
