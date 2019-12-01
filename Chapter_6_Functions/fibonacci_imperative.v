const (
    MAX = 10
)

fn main() {
	mut fibs := [0].repeat(MAX)
	fibs[0] = 1
	fibs[1] = 1
	
	for i := 2; i < MAX; i++ {
		fibs[i] = fibs[i-1] + fibs[i-2]
		println('The $i-th Fibonacci number is: ${fibs[i]}')
	}
}

/* Output:
The 2-th Fibonacci number is: 2
The 3-th Fibonacci number is: 3
The 4-th Fibonacci number is: 5
The 5-th Fibonacci number is: 8
The 6-th Fibonacci number is: 13
The 7-th Fibonacci number is: 21
The 8-th Fibonacci number is: 34
The 9-th Fibonacci number is: 55
*/