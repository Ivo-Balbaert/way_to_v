// recursive solution:
const (
    MAX = 10
)

fn fac(n int) int {
	if n == 0 {
		return 1
	}
	return n * fac(n - 1)
}

for i := 0; i <= MAX; i++ {
	println('factorial($i) is: ${fac(i)}')
}

// Output:
/*
factorial(0) is: 1
factorial(1) is: 1
factorial(2) is: 2
factorial(3) is: 6
factorial(4) is: 24
factorial(5) is: 120
factorial(6) is: 720
factorial(7) is: 5040
factorial(8) is: 40320
factorial(9) is: 362880
factorial(10) is: 3628800
*/