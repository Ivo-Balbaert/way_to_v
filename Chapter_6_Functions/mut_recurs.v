fn even(nr int) bool {
    if nr == 0 {return true}
    return odd(rev_sign(nr) - 1)
}

fn odd(nr int) bool {
    if nr == 0 {return false}
    return even(rev_sign(nr) - 1)
}

fn rev_sign(nr int) int {
	if nr < 0 {return -nr}
	return nr
}

println('16 is even: is ${even(16)}')   // 16 is even: is 1
println('17 is odd: is ${odd(17)}')     // 17 is odd: is 1
println('18 is odd: is ${odd(18)}')     // 18 is odd: is 0

/* Output:
16 is even: is 1
17 is odd: is 1
18 is odd: is 0
*/
