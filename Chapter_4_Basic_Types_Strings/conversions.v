fn main() {
	a := u32(15)
	mut b := i8(0)
	println(a)
	println(b) // 0
	b = i8(a + a)
  println(b)  // => 30 

	n := i16(34)
	mut m := int(0)
	m = int(n) // explicit cast
	println('16 bit int is:  $n')
	println('32 bit int is:  $m')

	c := 5.23
	d := int(c) // convert the float number a to an integer number
	println(d) // 5
}
/* Output:
15
0
30
16 bit int is:  34
32 bit int is:  34
5
*/
