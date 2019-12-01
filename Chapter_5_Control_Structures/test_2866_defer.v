fn main() {
  println('this order is ok, because the defer is activated at the end if the for }')
	for i := 0; i < 5; i++ {
    defer { println(i) }
  }
  println('correct order')
	defer { println(0) }
	defer { println(1) }
	defer { println(2) }
	defer { println(3) }
	defer { println(4) }
}
/*
wrong order
0
1
2
3
4
correct order
4
3
2
1
0
*/