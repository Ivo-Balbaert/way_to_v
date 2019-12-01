fn multiply_3nums(a, b, c int) int {
	// product := a * b * c
	// return product
	return a * b * c
}

i1 := multiply_3nums(2, 5, 6)
println('Multiply 2 * 5 * 6 = $i1')
println('Multiply 2 * 5 * 6 = ${multiply_3nums(2, 5, 6)}')

/* Output: 
Multiply 2 * 5 * 6 = 60
Multiply 2 * 5 * 6 = 60
*/