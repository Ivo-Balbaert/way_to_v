fn add_sub(x int, y int) (int, int) {
	return x + y, x - y
}

n1, n2 := add_sub(77, 33)
println('n1 is $n1, n2 is $n2') // n1 is 110, n2 is 44