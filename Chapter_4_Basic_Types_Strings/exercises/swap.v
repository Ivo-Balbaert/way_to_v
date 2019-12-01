// Idiom #21 Swap values of variables a and b
fn main() {
	mut n := 1
	mut m := 2
	println('n is $n and m is $m')
	mut temp := 0
	temp = n
	n = m
	m = temp
	println('n is $n and m is $m')
}

// Output:
// n is 1 and m is 2
// n is 2 and m is 1