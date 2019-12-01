fn factorial(n int) int {
	if n > 0 {
		return n * factorial(n-1)
	}
	return 1
}

for i := 0; i < 30; i++ {
	println('factorial of $i is ${factorial(i)}')
}

/* Output:
factorial of 0 is 1
factorial of 1 is 1
factorial of 2 is 2
factorial of 3 is 6
factorial of 4 is 24
factorial of 5 is 120
factorial of 6 is 720
factorial of 7 is 5040
factorial of 8 is 40320
factorial of 9 is 362880
factorial of 10 is 3628800
factorial of 11 is 39916800
factorial of 12 is 479001600...
// overflow occurs from 13 onwards
*/