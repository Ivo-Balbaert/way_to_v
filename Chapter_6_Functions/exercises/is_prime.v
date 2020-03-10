// Write a V program to check whether a number is a prime number or not using a function: 

fn is_prime(num int) bool {
	for i := 2; i < num; i++ {     // probably i < num / 2 also
		if num % i == 0 { return false }
	}
	return true
}

fn main () {
	println(is_prime(7).str()) // true
	println(is_prime(2020).str()) // false
}
