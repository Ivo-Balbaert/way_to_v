import (	
  math
  ui
)

const (
  greeting = 'Hello!'
)

struct T1 {
  field1 int
  field2 string
}

fn main() {
	a := 42
	func1()
	t := T1{}
	t.method1()
	// ...
	println(a)
}

fn (t T1) method1() {
	//...
}

fn func1() { 
	//...
}
