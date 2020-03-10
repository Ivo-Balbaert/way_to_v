const (
	ac = 'budapest'
)

fn main() {
	println(ac)
	mut n := 3
	mut m := 7
	for i in 1..5 {
		n++
		m += n * 2
		println('$m after $i times')
	}
	println('')
	println(n) // 7
	println(m) // 51
}
/* Output:
budapest
15 after 1 times
25 after 2 times
37 after 3 times
51 after 4 times

7
51
*/