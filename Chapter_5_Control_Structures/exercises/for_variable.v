// does not compile
fn main() {
	for i := 0; i < 10; i++ {
		println(i)
	}
	println(i)
}

// undefined: `i`
// i is only defined within the for block