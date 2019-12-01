fn main() {
	mut i := 7
	p := &i
	println(p) // 000000000062FE44
	i = p      // implicit dereference
	println(i) // 6487620
}
