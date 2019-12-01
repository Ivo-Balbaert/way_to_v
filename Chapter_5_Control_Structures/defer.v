fn main() {
	a := 1
	b := 2
	c := 3
	defer { println(a) }
	defer { println(b) }
	println(c)	
}

/* Output:
3
2
1
*/
