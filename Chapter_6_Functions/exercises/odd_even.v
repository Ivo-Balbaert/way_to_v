// Write a V program to check a given number is even or odd using the function.

fn is_even(num int) bool {
		if num % 2 == 0 { return true }
		else { return false }
}

println(is_even(77))   // => false
println(is_even(108))  // => true