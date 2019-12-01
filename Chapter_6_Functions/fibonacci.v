fn fib(n int) int {
	if n <= 1 {
		return 1
	}
	return fib(n - 1) + fib(n - 2)
}

for i := 0; i < 10; i++ {
	println('fibonacci($i) is: ${fib(i)}')
}

/* Output:
fibonacci(0) is: 1
fibonacci(1) is: 1
fibonacci(2) is: 2
fibonacci(3) is: 3
fibonacci(4) is: 5
fibonacci(5) is: 8
fibonacci(6) is: 13
fibonacci(7) is: 21
fibonacci(8) is: 34
fibonacci(9) is: 55
*/
