fn fib(n int) i64 {
	if n <= 1 {
		return i64(1)
	}
	return fib(n - 1) + fib(n - 2)
}

println(fib(45))

// 1836311903
