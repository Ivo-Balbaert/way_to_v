fn trace(s string)   { println('entering: $s') }
fn untrace(s string) { println('leaving:  $s') }

fn a() {
	trace("a")
	defer { untrace("a") }
	println("in a")
}

fn b() {
	trace("b")
	defer { untrace("b") }
	println("in b")
	a()
}

b()

/*
entering: b
in b
entering: a
in a
leaving: a
leaving: b
*/
