struct S {
	data int
	ptr  *int
}

fn (s S) str() string {
	return s.data.str()
}

fn main() {
	s1 := S{}
	s2 := S{data: 5}
	println(s1)
	println(s2)
}

/* Output:
0
5
*/