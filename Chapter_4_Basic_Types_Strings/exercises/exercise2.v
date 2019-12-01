fn main() {
	b := 7
	{
		b = 67
		println(b)
	}
	println(b)
}
/* Output:
panic: exercise2.v:4
`b` is immutable
*/