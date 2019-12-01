fn main() {
	mut i := 5
	for {
		i = i - 1
		println('The variable i is now: $i')
		if i <= 0 {
			break
		}
	}
}

/* Output:
The variable i is now: 4
The variable i is now: 3
The variable i is now: 2
The variable i is now: 1
The variable i is now: 0
*/
