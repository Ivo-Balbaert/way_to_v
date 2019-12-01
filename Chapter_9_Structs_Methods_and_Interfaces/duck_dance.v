// Nov 10: V error: C error. This should never happen.
interface IDucker {
	quack() string
	walk()  string
}

fn duck_dance(duck IDucker) {
	for i := 1; i <= 3; i++ {
		println(duck.quack())
		println(duck.walk())
	}
}

struct Bird  {}

fn (b Bird) quack() string {
	return 'I am quacking!'
}

fn (b Bird) walk() string {
	return 'I am walking!'
}

fn main() {
	b := Bird{}
	duck_dance(b)  
}

/* Output:
I am quacking!
I am walking!
I am quacking!
I am walking!
I am quacking!
I am walking!
*/
