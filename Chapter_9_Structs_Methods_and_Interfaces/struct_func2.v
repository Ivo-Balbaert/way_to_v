module main

struct Test {
	func fn()
}
	
fn main() {
	test := Test{print_func}
	test.func()
}

fn print_func() {
	println('Hello World')
}