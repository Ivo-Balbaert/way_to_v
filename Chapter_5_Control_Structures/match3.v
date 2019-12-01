fn main() {
	i := 0
	match i {
    0 {} 
    1 { f() }
	}
}

fn f() {
	println('f is called')
}

// No output!